import 'package:flutter/material.dart';
import 'package:open_settings_plus/open_settings_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              pinned: true,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Open settings +"),
              ),
              centerTitle: true,
              expandedHeight: 220,
            ),
          ],
          body: switch (OpenSettingsPlus.shared) {
            OpenSettingsPlusAndroid settings => _buildAndroidList(settings),
            OpenSettingsPlusIOS settings => _buildIOSList(settings),
            OpenSettingsPlusOHOS settings => _buildOhosList(settings),
            _ => const Center(
                child: Text(
                  "Unsupported platform.",
                ),
              ),
          },
        ),
      ),
    );
  }

  ListView _buildIOSList(OpenSettingsPlusIOS settings) {
    return ListView(
      children: [
        ListTile(
          onTap: settings,
          title: const Text("Open settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.wifi,
          title: const Text("Open wi-fi"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.about,
          title: const Text("Open about"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.accessibility,
          title: const Text("Open accessibility"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.accountSettings,
          title: const Text("Open account settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.autoLock,
          title: const Text("Open auto lock"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.battery,
          title: const Text("Open battery"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.bluetooth,
          title: const Text("Open bluetooth"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.dateAndTime,
          title: const Text("Open date and time"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.faceIDAndPasscode,
          title: const Text("Open face ID and passcode"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.cellular,
          title: const Text("Open cellular"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.dictionary,
          title: const Text("Open dictionary"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.displayAndBrightness,
          title: const Text("Open display and brightness"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.general,
          title: const Text("Open general"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.iCloud,
          title: const Text("Open iCloud"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.music,
          title: const Text("Open music"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.keyboard,
          title: const Text("Open keyboard"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.keyboards,
          title: const Text("Open keyboards"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.languageAndRegion,
          title: const Text("Open language and region"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.locationServices,
          title: const Text("Open location services"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.personalHotspot,
          title: const Text("Open personal hotspot"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.phone,
          title: const Text("Open phone"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.photosAndCamera,
          title: const Text("Open photos and camera"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.privacy,
          title: const Text("Open privacy"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.profilesAndDeviceManagement,
          title: const Text("Open Profiles"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.storageAndBackup,
          title: const Text("Open storage and backup"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.siri,
          title: const Text("Open siri"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.soundsAndHaptics,
          title: const Text("Open sounds and haptics"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.wallpapers,
          title: const Text("Wallpaper settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.healthKit,
          title: const Text("Open health kit"),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  ListView _buildAndroidList(OpenSettingsPlusAndroid settings) {
    return ListView(
      children: [
        ListTile(
          onTap: settings.wifi,
          title: const Text("Open wifi"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.accessibility,
          title: const Text("Open accessibility"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.addAccount,
          title: const Text("Open add account"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.airplaneMode,
          title: const Text("Open airplane mode"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.apnSettings,
          title: const Text("Open apn settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.appNotification,
          title: const Text("Open app notification"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.openByDefault,
          title: const Text("Open by default"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.appSettings,
          title: const Text("Open app settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationDetails,
          title: const Text("Open application details"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationDevelopment,
          title: const Text("Open application development"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationSettings,
          title: const Text("Open application settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationWriteSettings,
          title: const Text("Open application write settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.batterySaver,
          title: const Text("Open battery saver"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.bluetooth,
          title: const Text("Open bluetooth"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.tether,
          title: const Text("Open mobile hotspot and tethering"),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  ListView _buildOhosList(OpenSettingsPlusOHOS settings) {
    return ListView(
      children: [
        ListTile(
          onTap: settings.call,
          title: const Text("Open settings (home)"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.wifi,
          title: const Text("Open wifi"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.nfc,
          title: const Text("Open nfc"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.dataRoaming,
          title: const Text("Open data roaming"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.locationSource,
          title: const Text("Open location source"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.accessibility,
          title: const Text("Open accessibility"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.addAccount,
          title: const Text("Open add account"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.airplaneMode,
          title: const Text("Open airplane mode"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.apnSettings,
          title: const Text("Open apn settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.appNotification,
          title: const Text("Open app notification"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.openByDefault,
          title: const Text("Open by default"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.appSettings,
          title: const Text("Open app settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.notification,
          title: const Text("Open notification"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.security,
          title: const Text("Open security"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.sound,
          title: const Text("Open sound"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.display,
          title: const Text("Open display"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.date,
          title: const Text("Open date"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.deviceInfo,
          title: const Text("Open device info"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.internalStorage,
          title: const Text("Open internal storage"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.memoryCard,
          title: const Text("Open memory card"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationDetails,
          title: const Text("Open application details"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationDevelopment,
          title: const Text("Open application development"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationSettings,
          title: const Text("Open application settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          // ignore: deprecated_member_use
          onTap: settings.applicationNotification,
          title: const Text("Open application notification (deprecated)"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.applicationWriteSettings,
          title: const Text("Open application write settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.batterySaver,
          title: const Text("Open battery saver"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.bluetooth,
          title: const Text("Open bluetooth"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.cast,
          title: const Text("Open cast"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.dataUsage,
          title: const Text("Open data usage"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.tether,
          title: const Text("Open mobile hotspot and tethering"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.appNotificationBubble,
          title: const Text("Open app notification bubble"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.search,
          title: const Text("Open search settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.biometricEnroll,
          title: const Text("Open biometric enroll"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.hardwareKeyboard,
          title: const Text("Open hardware keyboard"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.home,
          title: const Text("Open home settings"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.ignoreBackgroundDataRestrictions,
          title: const Text("Open ignore background data restrictions"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.ignoreBatteryOptimization,
          title: const Text("Open ignore battery optimization"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.inputMethod,
          title: const Text("Open input method"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.inputMethodSubtype,
          title: const Text("Open input method subtype"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.locale,
          title: const Text("Open locale"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.manageAllApplications,
          title: const Text("Open manage all applications"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.manageApplication,
          title: const Text("Open manage applications"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.manageDefaultApps,
          title: const Text("Open manage default apps"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.manageExternalSources,
          title: const Text("Open manage external sources"),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: settings.manageOverlay,
          title: const Text("Open manage overlay"),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
