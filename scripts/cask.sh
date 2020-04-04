#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew cask uninstall --force visual-studio-code && brew cask install visual-studio-code

if [ -L ~/Library/Application\ Support/Code/user/settings.json ]; then
  echo "found old visual studio code settings. removing..."
  rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s $ROOT_DIR/config/visual-studio-code-settings.json ~/Library/Application\ Support/Code/User/settings.json



echo "installing custom fonts"
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-oswald
brew cask install font-jetbrains-mono

brew cask install typora

brew cask install android-platform-tools

brew cask install qlmarkdown                          # QuickLook for Markdown Files
brew cask install firefox                             # Firefox
brew cask install google-chrome-canary                # Chrome Canary
brew cask install google-chrome                       # Chrome
brew cask install iterm2                              # iTerm2
brew cask install alfred                              # Alfred
brew cask install zoomus                              # Zoom
brew cask install spotify                             # Spotify
brew cask install ngrok                               # Local server exposure
brew cask install bartender                           # Organise TabBar Icons
brew cask install whatsapp                            # Whatsapp
brew cask install rocket                              # Emojis with : notation
brew cask install notion                              # Notion
# enable audio and brightness control for ext screens
brew cask install monitorcontrol
