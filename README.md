**If there is an error installing this package**

If you are using an old version of the sdfcli / sdfsdk, and brew is not letting you install the update, try untapping and uninstalling old versions.

```cmd
brew untap limebox/netsuite
brew uninstall sdfcli
brew uninstall sdfsdk
```

**STOP: Upgrading from 2018.2.0**

Before upgrading, I recommend saving your .clicache file. This will not be necessary as the .clicache file is now symlinked and will be preserved with each upgrade going forward.

Open up your terminal and type these commands:
```bash
cp /usr/local/Cellar/sdfsdk/18.2.0/.clicache /usr/local/Cellar/sdfsdk/
```

You only need to do this when upgrading FROM 2018.2.0... If you are running a fresh install or upgrading in the future, you will no longer need to run this script.

**Installing**

To use this recipe, you must first have Java 8 installed.

**Note: NetSuite SDF SDK 18.1 is not compatible with Java 9. Please remove Java 9 and install Java 8**

```bash
brew cask install caskroom/versions/java8
```

# Installing
Install this recipe by typing the command:
```bash
brew install limebox/netsuite/sdfsdk
```

# Updating
Update this recipe by typing the command:
```bash
brew upgrade limebox/netsuite/sdfsdk
```

You may see the error:
```bash
Error: The following formula
  sdfsdk
cannot be installed as binary package and must be built from source.
```

If that is the case, type this command:
```bash
xcode-select --install
```