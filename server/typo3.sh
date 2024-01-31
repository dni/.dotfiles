#!/usr/bin/env sh

typo3deploy() {
  if [ -z "$1" ]; then
    echo missing argument name
    return
  fi
  echo "deploy"
  target=/var/www/$1
  [[ ! -d $target ]] && echo $1 does not exist. && return
  cd $target
  git pull
  composer install
  ./vendor/bin/typo3cms install:fixfolderstructure
  ./vendor/bin/typo3cms database:updateschema
  ./vendor/bin/typo3cms upgrade:prepare
  ./vendor/bin/typo3cms upgrade:run all
  ./vendor/bin/typo3cms language:update
  ./vendor/bin/typo3cms cache:flush
}

# create apache2 vhost
typo3vhostcreate() {
  [[ -z $1 ]] && echo "missing argument name" && return
  [[ -z $2 ]] && echo "missing argument domain" && return
  target=/etc/apache2/sites-available/$1.conf
  [[ -f $target ]] && echo vhost does exist. && return
  sudo tee $target <<EOF
<VirtualHost *:80>
  ServerAlias $2
  Redirect permanent / http://www.$2
</VirtualHost>
<VirtualHost *:80>
  DirectoryIndex index.html index.php
  ServerName www.$2
  DocumentRoot /var/www/$1/public
  LogLevel info
  ErrorLog /var/log/apache2/$1.log
  CustomLog /var/log/apache2/$1-access.log combined
  <Directory "/var/www/$1/public/">
    Options FollowSymLinks
    AllowOverride All
    Order allow,deny
    Allow from all
  </Directory>
</VirtualHost>
EOF
}
