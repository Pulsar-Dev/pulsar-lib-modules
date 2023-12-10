PulsarLib Modules
==================

This folder is for PulsarLib Modules. PulsarLib automatically downloads and updates modules for you.Each module is a folder containing a `module.json` file and a `.gma` file. The `.gma` file contains the module's code and assets. The `module.json` file contains the module's metadata

How to add your own module
--------------------------

Modules can be added by creating a folder called `module-name` in this base folder. Inside the folder you must create a `metadata.json` file and a `.gma` file if you have not got it stored anywhere else (e.g., Your modules github repo releases page). The `metadata.json` file **must** contain the following:

```json
{
    "name": "My Module",
    "description": "My Module Description",
    "latest": "1.0.0", // The latest version of the module
    "author": "My Name",
    "license": "My Module License", // e.g., Unlicense, MIT, etc.
    "documentation": "https://my-module-documentation.com", // Link to the module's documentation. Blank if any.
    "source": "https://github.com/My-Org/My-Repo", // Link to the module's source code. Blank if any.
    "versions": {
        "1.0.0": { // Version number
            "type": "release", // Type of version. Can be "release", "beta", or "alpha"
            "file": "https://github.com/My-Org/My-Repo/releases/download/1.0.0/my-module.gma", // Link to the module's `.gma` file. This can be a http download link or can be a filepath. e.g., `/1.0.0/my-module.gma` - This means that the `.gma` file should be in the same folder or subfolder as the `metadata.json` file.
            "src": "https://github.com/My-Org/My-Repo/tree/1.0.0", // Link to the module's source code.
            "folder": "my-module", // The folder name of the module. This is used to check if the module is installed in the addons folder for development purposes.
            "changelog": "Initial Release",
            "dependencies": {
                "my-other-module": "1.0.5" // The module's dependencies. The key is the module name and the value is the version number.
            }
        }
    }
}
```

Modules **must** also be put into the root `metadata.json` file. This is so that PulsarLib can find your module. The `metadata.json` file **must** contain the following:

```json
{
    "my-module": "/my-module" // The key is the module name and the value is the folder your module is located in.
}
```

The `metadata.json` file **must** be valid JSON. You can use [JSONLint](https://jsonlint.com/) to check if your `metadata.json` file is valid JSON.
