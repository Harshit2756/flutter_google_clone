import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

void main() {
  runApp(
    DevicePreview(
      // backgroundColor: ,
      tools: const [
        DeviceSection(
          frameVisibility: false,
          orientation: false,
        ),
        SystemSection(
          locale: false,
          theme: true,
        ),
        // AccessibilitySection(
        //   accessibleNavigation: false,
        //   boldText: false,
        //   invertColors: false,
        //   textScalingFactor: false,
        // ),
        SettingsSection(),
      ],
      devices: [
        Devices.android.samsungGalaxyA50,
        Devices.android.samsungGalaxyNote20,
        Devices.android.samsungGalaxyS20,
        Devices.android.samsungGalaxyNote20Ultra,
        Devices.android.onePlus8Pro,
        Devices.android.sonyXperia1II,
        Devices.ios.iPhoneSE,
        Devices.ios.iPhone12,
        Devices.ios.iPhone12Mini,
        Devices.ios.iPhone12ProMax,
        Devices.ios.iPhone13,
        Devices.ios.iPhone13ProMax,
        Devices.ios.iPhone13Mini,
        Devices.ios.iPhoneSE,
      ],
      defaultDevice: Devices.android.samsungGalaxyA50,
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        tooltipTheme: TooltipThemeData(
          waitDuration: const Duration(seconds: 1),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          decoration: BoxDecoration(
            color: const Color(0xff424548),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      title: 'Google Clone',
      home: const ResposiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
