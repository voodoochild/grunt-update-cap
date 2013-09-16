# grunt-update-cap

Automatically run `hcom_updateui` on CAP when you change CSS or JS files. You‘ll need `nodejs` and `npm` installed.

1. Clone this repository

		git clone git@github.com:voodoochild/grunt-update-cap.git


2. Install `grunt-cli` globally if you haven‘t used it before

		npm install -g grunt-cli

3. Install the dependencies

		cd grunt-update-cap; npm install


4. Edit `package.json` to configure CAP paths, e.g.

		"paths": {
		  "cap": "/Users/USERNAME/hcom-dev/hcom/Assets/CommonAssetPack/Main",
		  "styles": "/Users/USERNAME/hcom-dev/hcom/Assets/CommonAssetPack/Main/webapp/styles",
		  "scripts": "/Users/USERNAME/hcom-dev/hcom/Assets/CommonAssetPack/Main/webapp/js"
		}

5. Start watching

		grunt