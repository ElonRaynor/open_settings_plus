# open_settings_plus

本项目基于 [open_settings_plus](https://github.com/yanncabral/open_settings_plus) 开发，为 OpenHarmony Flutter 场景提供打开各种系统设置页面的能力。

## 1. 安装与使用

### 1.1 安装方式

进入工程目录并在 `pubspec.yaml` 中添加依赖：

#### pubspec.yaml

```yaml
dependencies:
  open_settings_plus:
    git:
      url: https://gitcode.com/org/OpenHarmony-Flutter/open_settings_plus
      ref: main
```
执行命令：

```bash
flutter pub get
```

### 1.2 使用案例

使用案例详见 [example](example/lib/main.dart)。

最简单的调用方式：

```dart
import 'package:open_settings_plus/open_settings_plus.dart';

// 打开 Wi-Fi 设置
await OpenSettingsPlus.ohos().wifi();

// 打开蓝牙设置
await OpenSettingsPlus.ohos().bluetooth();

// 打开应用详情页
await OpenSettingsPlus.ohos().applicationDetails();

// 自动识别平台
final settings = OpenSettingsPlus.build();
await settings?.wifi();
```

## 2. 约束条件

1. Flutter: 3.22.0-ohos; SDK: 5.0.0(12); IDE: DevEco Studio: 5.1.0.828; ROM: 5.1.0.130 SP8;
2. Flutter: 3.27.5-ohos-1.0.1; SDK: 5.0.0(12); IDE: DevEco Studio: 6.0.1.251; ROM: 6.0.0.120 SP6;
3. Flutter: 3.35.8-ohos-0.0.1; SDK: 6.0.1(21); IDE: DevEco Studio: 6.0.1.260; ROM: 6.0.0.120 SP6;

## 3. 版本和框架对应关系

|       | 3.7 | 3.22 | 3.27 | 3.35 |
|-------|:---:|:----:|:----:|:----:|
| 1.0.0 |  ❌  |  ✅   |  ✅   |  ✅   |

## 4. API

> [!TIP] "ohos Support" 列：yes 表示支持；no 表示不支持；partially 表示部分支持。

| Name | Description | Type | Input | Output | ohos Support |
| --- | --- | --- | --- | --- | --- |
| wifi() | 打开 Wi-Fi 设置页面 | function | 无 | Future\<bool\> | yes |
| nfc() | 打开 NFC 设置页面 | function | 无 | Future\<bool\> | yes |
| bluetooth() | 打开蓝牙设置页面 | function | 无 | Future\<bool\> | yes |
| locationSource() | 打开位置服务设置页面 | function | 无 | Future\<bool\> | yes |
| dataRoaming() | 打开数据漫游设置页面 | function | 无 | Future\<bool\> | yes |
| airplaneMode() | 打开飞行模式设置页面 | function | 无 | Future\<bool\> | yes |
| notification() | 打开通知设置页面 | function | 无 | Future\<bool\> | yes |
| sound() | 打开声音设置页面 | function | 无 | Future\<bool\> | yes |
| display() | 打开显示设置页面 | function | 无 | Future\<bool\> | yes |
| date() | 打开日期和时间设置页面 | function | 无 | Future\<bool\> | yes |
| deviceInfo() | 打开关于设备页面 | function | 无 | Future\<bool\> | yes |
| internalStorage() | 打开存储设置页面 | function | 无 | Future\<bool\> | yes |
| accessibility() | 打开辅助功能设置页面 | function | 无 | Future\<bool\> | yes |
| appSettings() | 打开应用信息入口 | function | 无 | Future\<bool\> | yes |
| applicationDetails() | 打开当前应用详情页 | function | 无 | Future\<bool\> | yes |
| applicationDevelopment() | 打开开发者选项设置页面 | function | 无 | Future\<bool\> | yes |
| applicationSettings() | 打开应用和服务设置页面 | function | 无 | Future\<bool\> | yes |
| batterySaver() | 打开电池设置页面 | function | 无 | Future\<bool\> | yes |
| cast() | 打开无线投屏设置页面 | function | 无 | Future\<bool\> | yes |
| dataUsage() | 打开数据流量管理页面 | function | 无 | Future\<bool\> | yes |
| tether() | 打开热点设置页面 | function | 无 | Future\<bool\> | yes |
| appNotification() | 打开应用通知设置页面 | function | 无 | Future\<bool\> | yes |
| biometricEnroll() | 打开生物识别和密码设置页面 | function | 无 | Future\<bool\> | yes |
| locale() | 打开语言和地区设置页面 | function | 无 | Future\<bool\> | yes |
| manageAllApplications() | 打开应用管理页面 | function | 无 | Future\<bool\> | yes |
| manageOverlay() | 打开智慧多窗设置页面 | function | 无 | Future\<bool\> | yes |
| call() | 打开系统设置首页 | function | 无 | Future\<bool\> | yes |
| addAccount() | 打开添加账户设置页面 | function | 无 | Future\<bool\> | no |
| openByDefault() | 打开默认打开设置页面 | function | 无 | Future\<bool\> | no |
| security() | 打开安全设置页面 | function | 无 | Future\<bool\> | no |
| memoryCard() | 打开 SD 卡存储设置页面 | function | 无 | Future\<bool\> | no |
| captioning() | 打开字幕设置页面 | function | 无 | Future\<bool\> | no |
| appNotificationBubble() | 打开通知气泡设置页面 | function | 无 | Future\<bool\> | no |
| search() | 打开搜索设置页面 | function | 无 | Future\<bool\> | no |
| hardwareKeyboard() | 打开硬件键盘设置页面 | function | 无 | Future\<bool\> | no |
| home() | 打开桌面设置页面 | function | 无 | Future\<bool\> | no |
| ignoreBackgroundDataRestrictions() | 打开后台数据限制设置页面 | function | 无 | Future\<bool\> | no |
| ignoreBatteryOptimization() | 打开电池优化设置页面 | function | 无 | Future\<bool\> | no |
| inputMethod() | 打开输入法设置页面 | function | 无 | Future\<bool\> | no |
| inputMethodSubtype() | 打开输入法子类型设置页面 | function | 无 | Future\<bool\> | no |
| manageDefaultApps() | 打开默认应用管理页面 | function | 无 | Future\<bool\> | no |
| manageExternalSources() | 打开外部来源管理页面 | function | 无 | Future\<bool\> | no |

## 5. 遗留问题

ohos 暂不支持：添加账户、默认打开设置、安全设置、SD卡存储、字幕设置、通知气泡、搜索设置、硬件键盘、桌面设置、后台数据限制、电池优化、输入法设置、输入法子类型、默认应用管理、外部来源管理。

## 6. 开源协议

本项目基于 [MIT](LICENSE) 开源。
