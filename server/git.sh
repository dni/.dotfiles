#!/bin/sh
create_repository() {
  if [ -z $1 ]; then
    echo "missing argument repository name."
    exit 1
  fi
  dir=/home/git/
  repo=$dir$1.git
  if [ -e $repo ]; then
    echo "$repo already exists."
    exit 1
  fi
  mkdir $repo
  cd $repo
  git init --bare
  chown -R git:git $repo
  chmod -R 750 $repo
  #cat <<EOF > $repo/hooks/post-receive
  ##!/bin/sh
  #sh /home/git/githook-post-receive.sh $1
  #EOF
}
