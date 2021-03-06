#!/usr/bin/env sh

alias m2="bin/magento"
alias m2index="bin/magento indexer:reindex"
alias m2cache="bin/magento cache:clean"
alias m2setup="bin/magento setup:upgrade"
alias m2module="bin/magento module:status"
alias m2enmodule="bin/magento module:enable"
alias m2dismodule="bin/magento module:disable"
alias m2di="bin/magento setup:di:compile"
alias m2static="bin/magento setup:static-content:deploy"
alias m2disetup="bin/magento setup:upgrade;bin/magento setup:di:compile"

m2rm() {
  setopt localoptions rmstarsilent
  rm -rf var/cache/* var/view_preprocessed/* pub/static/frontend/* var/page_cache/*
}

m2domainlocal() {
  [[ -z $1 ]] && echo missing argument domain && return
  bin/magento config:set "web/secure/use_in_frontend" 0
  bin/magento config:set "web/secure/use_in_adminhtml" 0
  bin/magento config:set "web/unsecure/base_url" "http://dev.$1:8082/"
  bin/magento config:set "web/secure/base_url" "http://dev.$1:8082/"
  bin/magento config:set "web/unsecure/base_static_url" "{{unsecure_base_url}}pub/static/"
  bin/magento config:set "web/secure/base_static_url" "{{unsecure_base_url}}pub/static/"
}

m2fetch() {
  [[ -z $1 ]] && echo missing argument dbname && return
  [[ -z $2 ]] && echo missing argument domain && return
  mysqlfetch $1
  magento2dblocal
  magento2domainlocal $2
  bin/magento cache:flush
}

m2domainonline() {
  [[ -z $1 ]] && echo missing argument domain && return
  bin/magento config:set "web/secure/use_in_frontend" 1
  bin/magento config:set "web/secure/use_in_adminhtml" 1
  bin/magento config:set "web/unsecure/base_url" "https://$1/"
  bin/magento config:set "web/secure/base_url" "https://$1/"
}

m2dblocal() {
  bin/magento setup:config:set --db-host=localhost --db-user=magentouser --db-password=magentopass
}

m2perms () {
  sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
  sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
  sudo chown -R magento2:www-data .
  sudo chmod u+x bin/magento
}
m2createdb () {
  createdbfromconfig ./app/etc/env.php
}

# magento2create initialize new magento2 store
m2createclean(){
  [[ -z $1 ]] && echo "missing argument projectname" && return
  [[ -z $2 ]] && echo "missing argument mysql password" && return
  [[ -z $3 ]] && echo "missing argument domain" && return
  [[ -z $4 ]] && echo "missing argument admin password" && return
  composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition .
  php bin/magento setup:install \
    --base-url="http://$3/" \
    --db-host="magento2-sql.hostinghelden.at" \
    --db-name="$1" \
    --db-user="$1" \
    --db-password="$2" \
    --admin-firstname="dni" \
    --admin-lastname="khr" \
    --admin-email="office@hostinghelden.at" \
    --admin-user="hostinghelden" \
    --admin-password="$4" \
    --language="de_DE" \
    --currency="EUR" \
    --timezone="Europe/Vienna" \
    --use-rewrites="1" \
    --backend-frontname="admin"
  # german translations
  composer require splendidinternet/mage2-locale-de-de
  rm -f pub/static/frontend/Magento/luma/de_DE/js-translation.json
  php bin/magento setup:static-content:deploy de_DE -f
  # firegento
  composer require firegento/magesetup2:dev-develop
  php bin/magento module:enable FireGento_MageSetup
  php bin/magento setup:upgrade
  php bin/magento magesetup:setup:run at
  php bin/magento cache:enable
}

m2deployadmin(){
  setopt localoptions rmstarsilent
  rm -rf pub/static/adminhtml/*
  bin/magento setup:static-content:deploy de_DE -a adminhtml -f
  aws s3 sync pub/static/adminhtml s3://$(cat .bucket)/static/adminhtml
  aws cloudfront create-invalidation --distribution-id $(cat .cloudfront) --paths /static/adminhtml/\*
}

m2deployfrontend(){
  setopt localoptions rmstarsilent
  rm -rf pub/static/frontend/*
  if [ -e ".languages" ]; then
    bin/magento setup:static-content:deploy -t $(cat .template) -a frontend --no-parent -f $(cat .languages)
  else
    bin/magento setup:static-content:deploy -t $(cat .template) -a frontend --no-parent -f de_DE
  fi
  aws s3 sync pub/static/frontend s3://$(cat .bucket)/static/frontend
  aws cloudfront create-invalidation --distribution-id $(cat .cloudfront) --paths /static/frontend/\*
}

m2deploy(){
  m2deployadmin
  m2deployfrontend
}
