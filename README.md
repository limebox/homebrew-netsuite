**Update Note: Because NetSuite changed the name of this project to SDF SDK, I've changed it as well**

You will need to reset the repo if you previously installed sdfcli.

```cmd
brew untap limebox/netsuite
brew uninstall sdfcli
```

To use this recipe, you must first have Java 8 installed.

**Note: NetSuite SDF SDK 18.1 is not compatible with Java 9. Please remove Java 9 and install Java 8**

```bash
brew cask install caskroom/versions/java8
```

Install this recipe by typing the command below
```bash
brew install limebox/netsuite/sdfsdk
```
