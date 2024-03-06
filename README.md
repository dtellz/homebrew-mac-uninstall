# mac-uninstall

<p align="center" margin="0">
    <a href="https://www.diego-tellez.com/">
    <img alt="stuart logo" src="./assets/mac-uninstall-logo.png" width="250">
</a>
</p>

A simple CLI tool to help you uninstall applications on macOS by removing the application itself and associated files in various directories.

## Installation

You can install `mac-uninstall` via Homebrew with the following commands:

```bash
brew tap dtellz/mac-uninstall
brew install mac-uninstall
```

## Usage

`IMPORTANT: (PR is welcomed to fix this manual step)` Before or after running `mac-uninstall`, you will also need to delete the "application.app" from the Applications folder manually, navigate to it with finder and drag and drop the app icon to the Bin. I haven't yet found a way to do this programmatically.

To uninstall an application, simply run the next command replacing <app-name> with the name of the application you wish to uninstall.

```bash
mac-uninstall <app-name>
```

For example, if you want to uninstall "ExampleApp", you would run:

```bash
mac-uninstall ExampleApp
```

`mac-uninstall` will search for all the files that need to be deleted for a clean uninstall and ask you to proceed (y/n).

Once you input `y` the tool will remove the application and its related files from your mac system.

## Contributing

If you would like to contribute to this project, please open an issue or a pull request. We welcome any and all contributions.

## License

This project is licensed under the MIT License - see the [MIT License](https://opensource.org/licenses/MIT) file for details.

## Warning

This tool is provided as-is and without warranty, be carefull with the name you use to be exact to the application you want to delete. Use at your own risk. We are not responsible for any damage or data loss caused by the use of this tool.
