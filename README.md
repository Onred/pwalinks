# PWA Links
![PWA Links Icon](extension/icons/pwalinks.png "PWA Links")

Opens external links in your default browser. Any links that share the same origin will be unaffected. Works best if your default browser is not Firefox or if this addon is installed in a different Firefox profile than your default profile. See: [Firefox Profiles](http://mzl.la/1BAQULj)

If you use multiple PWAs with different profiles, you will need to install the extension on each profile, but you only need to follow the installation below for the Firefox Native Message Listener once per machine.

## How to install
1. Ensure the Firefox extension is installed. Get it [here](https://addons.mozilla.org/firefox/addon/pwa-links).
2. Ensure Python is installed on your machine and in your PATH.
3. Clone this repo and install the Firefox Native Message Listener for your operating system below:

   #### Linux
   Run the following commands:
   ```
   git clone https://github.com/Onred/pwalinks.git
   cd pwalinks
   make install
   ```

   #### Windows
   Clone this repo or download the .zip and unzip it. Run the `windows_installer.bat` file as an administrator.