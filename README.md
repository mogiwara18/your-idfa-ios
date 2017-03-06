![app icon](./assets/appicon/icon_40@2x.png)

# YourIDFA

[![GitHub release](https://img.shields.io/github/release/naoto0822/your-idfa-ios.svg)](https://github.com/naoto0822/your-idfa-ios/releases)
[![GitHub issues](https://img.shields.io/github/issues/naoto0822/your-idfa-ios.svg)](https://github.com/naoto0822/your-idfa-ios/issues)
[![license](https://img.shields.io/github/license/naoto0822/your-idfa-ios.svg)](https://github.com/naoto0822/your-idfa-ios/blob/master/LICENSE)

You can confirm IDFA/Optout of this device installed YourIDFA.

> TODO: screenshot

## App Store

> TODO: url

## Getting Started

1. clone this repository.

 ```sh
 $ git clone https://github.com/naoto0822/your-gaid-android.git
 ```

2. clone submodule repository.

 ```sh
 $ git submodule update --init --recursive
 ```

3. setup Gem and CocoaPods.

 ```sh
 $ bundle install
 $ pod install
 ```

4. install certificates and provisioning profile.

 ```sh
 $ fastlane match development
 ```

5. open Xcode project.

 ```sh
 $ open `YourIDFA.xcworkspace`
 ```

> run following command when register new device.

```
$ fastlane match --force_for_new_devices deveopment
```

## OSS

- [Material](https://github.com/CosmicMind/Material)
- [CocoaPods](https://cocoapods.org/)
- [fastlane](https://github.com/fastlane/fastlane)

## 3rd Party SDK

#### Analytics

- [Firebase](https://firebase.google.com/ "Firebase")

#### Crash

- [Fabric](https://fabric.io, "Fabric")

#### Tracker

- [MobileInsight](https://ymi.yahoo.co.jp/)

## TODO

- [☓] setting xcconfig
- [ ] setting SwiftLint
- [ ] build in Bitrise CI
- [ ] update fastlane script

## License

```
Copyright 2017 Naoto Yamaguchi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
