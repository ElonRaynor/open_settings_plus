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

  Future<bool> wifi() => openSettingsUri('wifi_entry');

  Future<bool> nfc() => openSettingsUri('nfc_settings');

  Future<bool> dataRoaming() => openSettingsUri('mobile_data_settings_entry');

  Future<bool> locationSource() => openSettingsUri('location_manager_settings');

  Future<bool> bluetooth() => openSettingsUri('bluetooth_entry');

  Future<bool> notification() =>
      openSettingsUri('systemui_notification_settings');

  Future<bool> sound() => openSettingsUri('volume_settings');

  Future<bool> display() => openSettingsUri('display_settings');

  Future<bool> date() => openSettingsUri('date_and_time');

  Future<bool> deviceInfo() => openSettingsUri('about_device');

  Future<bool> internalStorage() => openSettingsUri('storage_settings');

  Future<bool> accessibility() => openSettingsUri('accessibility_feature');

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

  Future<bool> appNotification() => openSettingsUri(
        'systemui_notification_detail_settings',
        paramMode: OpenSettingsPlusOhosParamMode.pushParamsBundleName,
      );

  Future<bool> biometricEnroll() => openSettingsUri('biometrics_and_password_settings');

  Future<bool> locale() => openSettingsUri('set_language_region');

  Future<bool> manageAllApplications() => openSettingsUri('application_info_entry');

  Future<bool> manageApplication() => openSettingsUri('application_info_entry');

  Future<bool> manageOverlay() => openSettingsUri('smart_multi_window');
  
  Future<bool> call()  => openSettingsUri('');

  // android.settings.ADD_ACCOUNT_SETTINGS
  Future<bool> addAccount() async => false;

  // android.settings.APP_OPEN_BY_DEFAULT_SETTINGS
  Future<bool> openByDefault() async => false;

  // android.settings.SECURITY_SETTINGS
  Future<bool> security() async => false;

  // android.settings.MEMORY_CARD_SETTINGS
  Future<bool> memoryCard() async => false;

  // android.settings.CAPTIONING_SETTINGS
  Future<bool> captioning() async => false;

  // android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS
  Future<bool> appNotificationBubble() async => false;

  // android.search.action.SEARCH_SETTINGS
  Future<bool> search() async => false;

  // android.settings.HARD_KEYBOARD_SETTINGS
  Future<bool> hardwareKeyboard() async => false;

  // android.settings.HOME_SETTINGS
  Future<bool> home() async => false;

  // android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS
  Future<bool> ignoreBackgroundDataRestrictions() async => false;

  // android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS
  Future<bool> ignoreBatteryOptimization() async => false;

  // android.settings.INPUT_METHOD_SETTINGS
  Future<bool> inputMethod() async => false;

  // android.settings.INPUT_METHOD_SUBTYPE_SETTINGS
  Future<bool> inputMethodSubtype() async => false;

  // android.settings.MANAGE_DEFAULT_APPS_SETTINGS
  Future<bool> manageDefaultApps() async => false;

  // android.settings.MANAGE_EXTERNAL_SOURCES_SETTINGS
  Future<bool> manageExternalSources() async => false;
}
