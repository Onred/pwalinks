# Web App Links

Opens external links in your default browser. Any links that share the same origin will be unaffected.
Works best if your default browser is not Firefox or if this addon is installed in your non-default Firefox profile.

## How to install
1. Ensure the firefox extension is installed
2. Ensure python is installed on your machine and in your PATH
3. Clone this repo and install the Firefox native message listener.

   ### Linux
   You can run the following commands:
   ```
   git clone https://github.com/Onred/webapplinks.git
   cd webapplinks
   make install
   ```
    Optionally you can copy the contents of the native-messaging-hosts folder to ~/.mozilla/native-messaging-hosts/
    Create the folder if it doesn't exist, and make sure to replace the %HOME% placeholder in the path field of the JSON file.

   ### Windows
   Clone this repo or download the .zip and unzip it. Run the windows_installer.bat file as an administrator.