fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></td>
<th width="33%">Installer Script</td>
<th width="33%">Rubygems</td>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew cask install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>

# Available Actions
## iOS
### ios bootstrap
```
fastlane ios bootstrap
```
Bootstrap
### ios fetch_certificates
```
fastlane ios fetch_certificates
```
Fetchs certificates and provisioning profiles
### ios init_certificates
```
fastlane ios init_certificates
```
Fastlane create certificates and provisioning profiles if not exists them
### ios force_certificates
```
fastlane ios force_certificates
```
Force update certificates and provisioning profiles
### ios debug_build
```
fastlane ios debug_build
```
Debug build
### ios adhoc_build
```
fastlane ios adhoc_build
```
Adhoc build
### ios release_build
```
fastlane ios release_build
```
Release build
### ios deploy_metadata
```
fastlane ios deploy_metadata
```
Deploy Metadata
### ios test
```
fastlane ios test
```
Runs all the tests
### ios fabric
```
fastlane ios fabric
```
Submit to Fabric.
### ios beta
```
fastlane ios beta
```
Submit a new Beta Build to Apple TestFlight
### ios deploy
```
fastlane ios deploy
```
Deploy a new version to the App Store

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
