# open_settings_plus

This project is based on [open_settings_plus](https://github.com/yanncabral/open_settings_plus) and provides the ability to open various system settings pages for OpenHarmony Flutter scenarios.

## 1. Installation and Usage

### 1.1 Installation

Add the dependency in your `pubspec.yaml`:

#### pubspec.yaml

```yaml
dependencies:
  open_settings_plus:
    git:
      url: https://gitcode.com/org/OpenHarmony-Flutter/open_settings_plus
      ref: main
```

Run the command:

```bash
flutter pub get
```

### 1.2 Usage Example

See [example](example/lib/main.dart) for more details.

The simplest usage:

```dart
import 'package:open_settings_plus/open_settings_plus.dart';

// Open Wi-Fi settings
await OpenSettingsPlus.ohos().wifi();

// Open Bluetooth settings
await OpenSettingsPlus.ohos().bluetooth();

// Open application details page
await OpenSettingsPlus.ohos().applicationDetails();

// Auto-detect platform
final settings = OpenSettingsPlus.build();
await settings?.wifi();
```

## 2. Constraints

1. Flutter: 3.22.0-ohos; SDK: 5.0.0(12); IDE: DevEco Studio: 5.1.0.828; ROM: 5.1.0.130 SP8;
2. Flutter: 3.27.5-ohos-1.0.1; SDK: 5.0.0(12); IDE: DevEco Studio: 6.0.1.251; ROM: 6.0.0.120 SP6;
3. Flutter: 3.35.8-ohos-0.0.1; SDK: 6.0.1(21); IDE: DevEco Studio: 6.0.1.260; ROM: 6.0.0.120 SP6;

## 3. Version and Framework Mapping

|       | 3.7 | 3.22 | 3.27 | 3.35 |
|-------|:---:|:----:|:----:|:----:|
| 1.0.0 |  ❌  |  ✅   |  ✅   |  ✅   |

## 4. API

> [!TIP] "ohos Support" column: yes means supported; no means not supported; partially means partially supported.

| Name | Description | Type | Input | Output | ohos Support |
| --- | --- | --- | --- | --- | --- |
| wifi() | Open Wi-Fi settings page | function | none | Future\<bool\> | yes |
| nfc() | Open NFC settings page | function | none | Future\<bool\> | yes |
| bluetooth() | Open Bluetooth settings page | function | none | Future\<bool\> | yes |
| locationSource() | Open Location services settings page | function | none | Future\<bool\> | yes |
| dataRoaming() | Open Data roaming settings page | function | none | Future\<bool\> | yes |
| airplaneMode() | Open Airplane mode settings page | function | none | Future\<bool\> | yes |
| notification() | Open Notification settings page | function | none | Future\<bool\> | yes |
| sound() | Open Sound settings page | function | none | Future\<bool\> | yes |
| display() | Open Display settings page | function | none | Future\<bool\> | yes |
| date() | Open Date and time settings page | function | none | Future\<bool\> | yes |
| deviceInfo() | Open About device page | function | none | Future\<bool\> | yes |
| internalStorage() | Open Storage settings page | function | none | Future\<bool\> | yes |
| accessibility() | Open Accessibility settings page | function | none | Future\<bool\> | yes |
| appSettings() | Open Application info entry | function | none | Future\<bool\> | yes |
| applicationDetails() | Open current app details page | function | none | Future\<bool\> | yes |
| applicationDevelopment() | Open Developer options settings page | function | none | Future\<bool\> | yes |
| applicationSettings() | Open Application and service settings page | function | none | Future\<bool\> | yes |
| batterySaver() | Open Battery settings page | function | none | Future\<bool\> | yes |
| cast() | Open Wireless projection settings page | function | none | Future\<bool\> | yes |
| dataUsage() | Open Data usage management page | function | none | Future\<bool\> | yes |
| tether() | Open Hotspot settings page | function | none | Future\<bool\> | yes |
| appNotification() | Open App notification settings page | function | none | Future\<bool\> | yes |
| biometricEnroll() | Open Biometrics and password settings page | function | none | Future\<bool\> | yes |
| locale() | Open Language and region settings page | function | none | Future\<bool\> | yes |
| manageAllApplications() | Open Application management page | function | none | Future\<bool\> | yes |
| manageOverlay() | Open Smart multi-window settings page | function | none | Future\<bool\> | yes |
| call() | Open System settings home page | function | none | Future\<bool\> | yes |
| addAccount() | Open Add account settings page | function | none | Future\<bool\> | no |
| openByDefault() | Open Open by default settings page | function | none | Future\<bool\> | no |
| security() | Open Security settings page | function | none | Future\<bool\> | no |
| memoryCard() | Open SD card storage settings page | function | none | Future\<bool\> | no |
| captioning() | Open Captioning settings page | function | none | Future\<bool\> | no |
| appNotificationBubble() | Open Notification bubble settings page | function | none | Future\<bool\> | no |
| search() | Open Search settings page | function | none | Future\<bool\> | no |
| hardwareKeyboard() | Open Hardware keyboard settings page | function | none | Future\<bool\> | no |
| home() | Open Home settings page | function | none | Future\<bool\> | no |
| ignoreBackgroundDataRestrictions() | Open Background data restrictions settings page | function | none | Future\<bool\> | no |
| ignoreBatteryOptimization() | Open Battery optimization settings page | function | none | Future\<bool\> | no |
| inputMethod() | Open Input method settings page | function | none | Future\<bool\> | no |
| inputMethodSubtype() | Open Input method subtype settings page | function | none | Future\<bool\> | no |
| manageDefaultApps() | Open Default apps management page | function | none | Future\<bool\> | no |
| manageExternalSources() | Open External sources management page | function | none | Future\<bool\> | no |

## 5. Known Issues

ohos does not support: Add account, Open by default, Security, SD card storage, Captioning, Notification bubble, Search, Hardware keyboard, Home, Background data restrictions, Battery optimization, Input method, Input method subtype, Default apps management, External sources management.

## 6. License

This project is open-sourced under the [MIT](LICENSE) license.
