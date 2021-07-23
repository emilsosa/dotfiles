#!/bin/sh

if [ "$(id -u)" -ne 0 ]
  then echo "Dependencies installation must run as root."
  exit
fi

apt update
apt install -y git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

echo "Installing rbenv..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv > /dev/null 2>&1
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build > /dev/null 2>&1
echo "gem: --no-document" > ~/.gemrc
echo "Finished installing rbenv..."
