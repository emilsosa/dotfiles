#!/bin/sh

if [ "$(id -u)" -ne 0 ]
  then echo "Dependencies installation must run as root."
  exit
fi

sudo apt update
sudo apt install -y zsh git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev

echo "Setting zsh as default shell."
chsh -s $(which zsh)
echo "Finished setting zsh as default shell."

echo "Install oh-my-zsh."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Finished installing oh-my-zsh."

echo "Installing rbenv."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv > /dev/null 2>&1
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build > /dev/null 2>&1
echo "gem: --no-document" > ~/.gemrc
echo "Finished installing rbenv."

echo "Installing sdkman."
curl -s "https://get.sdkman.io" | bash
echo "Finished installing sdkman."

echo "Restart current session to apply changes."
