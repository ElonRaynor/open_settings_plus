part of 'open_settings_plus.dart';

enum OpenSettingsPlusOhosParamMode {
  none,
  pushParamsSelf,
  pushParamsBundleName,
}

class OpenSettingsPlusOHOS extends OpenSettingsPlus {
  const OpenSettingsPlusOHOS();

  static const MethodChannel _ohosMethodChannel =
      MethodChannel('open_settings_plus');
  Future<bool> openSettingsUri(
    String uri, {
    OpenSettingsPlusOhosParamMode paramMode =
        OpenSettingsPlusOhosParamMode.none,
  }) async {
    final success = await _ohosMethodChannel.invokeMethod<bool>(
      'openSettingsUri',
      {
        'uri': uri,
        'paramMode': paramMode.name,
      },
    );
    return success ?? false;
  }

  @override
  Future<bool> sendCustomMessage(String message) {
    return openSettingsUri(message);
  }
  /// 无稳定映射
  Future<bool> call() => openSettingsUri('');

  Future<bool> wifi() => openSettingsUri('wifi_entry');

  Future<bool> nfc() => openSettingsUri('nfc_settings');

  Future<bool> dataRoaming() => openSettingsUri('mobile_data_settings_entry');

  Future<bool> locationSource() => openSettingsUri('location_manager_settings');

  Future<bool> bluetooth() => openSettingsUri('bluetooth_entry');

  Future<bool> notification() =>
      openSettingsUri('systemui_notification_settings');

  Future<bool> security() => openSettingsUri('privacy_settings');

  Future<bool> sound() => openSettingsUri('volume_settings');

  Future<bool> display() => openSettingsUri('display_settings');

  Future<bool> date() => openSettingsUri('date_and_time');

  Future<bool> deviceInfo() => openSettingsUri('about_device');

  Future<bool> internalStorage() => openSettingsUri('storage_settings');
/// 无稳定映射 （SD卡）存储空间
  Future<bool> memoryCard() => openSettingsUri('open');

  Future<bool> accessibility() => openSettingsUri('accessibility_feature');

  Future<bool> addAccount() => openSettingsUri('hms_account_home_settings');

  Future<bool> airplaneMode() => openSettingsUri('mobile_network_entry');

  Future<bool> apnSettings() => openSettingsUri('mobile_data_settings_entry');

  Future<bool> appSettings() => openSettingsUri('application_info_entry');

  Future<bool> applicationDetails() => openSettingsUri(
        'application_info_entry',
        paramMode: OpenSettingsPlusOhosParamMode.pushParamsSelf,
      );

  Future<bool> applicationDevelopment() =>
      openSettingsUri('developer_options_settings');

  @Deprecated('Use appNotification() instead.')
  Future<bool> applicationNotification() {
    return appNotification();
  }

  Future<bool> applicationSettings() =>
      openSettingsUri('application_and_service_settings');

  Future<bool> applicationWriteSettings() => openSettingsUri('privacy_settings');

  Future<bool> batterySaver() => openSettingsUri('battery');


  Future<bool> cast() => openSettingsUri('wireless_projection_settings');

  Future<bool> dataUsage() => openSettingsUri('mobile_data_manage_entr');

  Future<bool> tether() => openSettingsUri('hotspot_data_settings');

  Future<bool> appNotificationBubble() => openSettingsUri('');

  Future<bool> appNotification() => openSettingsUri(
        'systemui_notification_detail_settings',
        paramMode: OpenSettingsPlusOhosParamMode.pushParamsBundleName,
      );

  Future<bool> openByDefault() => openSettingsUri(
        'application_info_entry',
        paramMode: OpenSettingsPlusOhosParamMode.pushParamsSelf,
      );

  /// Search（无稳定映射）
  Future<bool> search() => openSettingsUri('');

  ///生物识别和密码
  Future<bool> biometricEnroll() => openSettingsUri('biometrics_and_password_settings');

  /// Hardware keyboard（无稳定映射）
  Future<bool> hardwareKeyboard() => openSettingsUri('');

  /// Home settings（无稳定映射）
  Future<bool> home() => openSettingsUri('');

  /// Background data restrictions（无稳定映射）
  Future<bool> ignoreBackgroundDataRestrictions() => openSettingsUri('');

  /// Battery optimization（无稳定映射）
  Future<bool> ignoreBatteryOptimization() => openSettingsUri('systemui_battery_settings');

  /// Input method
  Future<bool> inputMethod() => openSettingsUri('set_input');

  /// Input method subtype（无稳定映射）
  Future<bool> inputMethodSubtype() => openSettingsUri('');

  Future<bool> locale() => openSettingsUri('set_language_region');

  Future<bool> manageAllApplications() => openSettingsUri('application_info_entry');

  Future<bool> manageApplication() => openSettingsUri('application_info_entry');

  /// External sources（无稳定映射）
  Future<bool> manageExternalSources() => openSettingsUri('');

  /// 智慧多窗
  Future<bool> manageOverlay() => openSettingsUri('smart_multi_window');
}
