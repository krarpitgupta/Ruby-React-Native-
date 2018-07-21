echo "Installing rvm"
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.4.0
rvm --default use 2.4.0

echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Installing node"
brew update
brew upgrade node
brew install node

echo "Installing appium"
npm install -g appium
npm install -g appium-doctor
npm install -g authorize-ios

echo "Installing iOS external dependencies"
brew install ideviceinstaller
brew install carthage
brew install libimobiledevic
npm install -g ios-deploy
npm install -g deviceconsole
