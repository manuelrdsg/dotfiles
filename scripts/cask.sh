#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew uninstall --cask --force visual-studio-code && brew install --cask visual-studio-code

if [ -L ~/Library/Application\ Support/Code/user/settings.json ]; then
  echo "found old visual studio code settings. removing..."
  rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s $ROOT_DIR/config/visual-studio-code-settings.json ~/Library/Application\ Support/Code/User/settings.json



echo "installing custom fonts"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-oswald
brew install --cask font-jetbrains-mono
brew install --cask font-hack-nerd-font

brew install --cask typora

brew install --cask android-platform-tools

brew install --cask qlmarkdown                          # QuickLook for Markdown Files
brew install --cask firefox                             # Firefox
brew install --cask google-chrome-canary                # Chrome Canary
brew install --cask google-chrome                       # Chrome
brew install --cask iterm2                              # iTerm2
brew install --cask alfred                              # Alfred
brew install --cask zoomus                              # Zoom
brew install --cask spotify                             # Spotify
brew install --cask ngrok                               # Local server exposure
brew install --cask bartender                           # Organise TabBar Icons
brew install --cask whatsapp                            # Whatsapp
brew install --cask rocket                              # Emojis with : notation
brew install --cask notion                              # Notion
brew install --cask rectangle                           # Managing windows easily
brew install --cask openinterminal                      # Open documents and folders in editor or terminal
# enable audio and brightness control for ext screens
brew install --cask monitorcontrol
