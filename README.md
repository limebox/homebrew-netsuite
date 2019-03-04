**SDK Key Handling**

If you are on 18.2.X only.

Before upgrading, I recommend saving your .clicache file. This will not be necessary as the .clicache file is now symlinked and will be preserved with each upgrade going forward.

Open up your terminal and type these commands:
```bash
cp /usr/local/Cellar/sdfsdk/18.2.0/.clicache ~/
```

*- or (if you have previously upgraded to 18.2.1) -*

```bash
cp /usr/local/Cellar/sdfsdk/.clicache ~/
```
Future installations will have this file saved here so it is only accessible through the logged in user. This is an encrypted file where the SDK keeps all public keys. Keeping it here will also guanrentee that future upgrades will not sever this connection.

**Changes to Brew**

In a recent update, Homebrew has changed how it handles old versions. It now automatically removes old versions when updating to new versions. This is a problem for people who use the SDF SDK as we are often in a situation where we need to run both versions (for example, testing in a Release Preview vs running in a live version). A few of are consultants who need three versions, 18.2.0, 18.2.1, and 19.1.0 as all three are live at the same time given the rollout schedule.

To that end, we have changed how old releases are handled. First, upgrade to the latest release:
```bash
brew upgrade sdfsdk
```

Then, if you still need access to old versions, you can install them via:
```bash
brew install sdfsdk@XX.X.X
```
Where XX.X.X is the corresponding SDF SDK release you need. Starting in 18.2.0 we will have all major previous releases available for historical reasons as this will help us agregate our numbers when we eventually try to integrate with the core Homebrew app.

To switch between SDF SDK versions, you will need to first unlink the active version and link the new version.
```bash
brew unlink sdfsdk
brew link sdfsdk@18.2.1
```

If you are comfortable with .bash_profile files, you can also add this script to make it easier.
```bash
function sdfsdk() {

	version=$1
	versions=($(brew search sdfsdk))
	link="sdfsdk"

	brew unlink sdfsdk

	for i in "${versions[@]}"
	do
		if [[ $i != "==>" ]] && [[ $i != "Formulae" ]];then
			sdkunlink="${i/limebox\/netsuite\//}"
			brew unlink $sdkunlink
		fi
	done

	if [[ $1 != "" ]]; then
		link="$link@$version"
	fi

	brew link $link

}
```

When added to your .bash_profile, you can execute the switch by typing:

```bash
sdfsdk #switches to the main version
```

*- or -*

```bash
sdfsdk 18.2.1 #switches to an older version, this must be installed first
```

**If there is an error installing this package**

If you are using an old version of the sdfcli / sdfsdk, and brew is not letting you install the update, try untapping and uninstalling old versions.

```bash
brew untap limebox/netsuite
brew uninstall sdfcli
brew uninstall sdfsdk
```

You only need to do this when upgrading FROM 2018.2.0... If you are running a fresh install or upgrading in the future, you will no longer need to run this script.

**Installing**

Install this recipe by typing the command:
```bash
brew install limebox/netsuite/sdfsdk
```

# Updating
Update this recipe by typing the command:
```bash
brew upgrade sdfsdk
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