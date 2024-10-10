import 'package:device_preview_screenshot/device_preview_screenshot.dart';
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
        // SystemSection(
        //   locale: false,
        //   theme: true,
        // ),
        // AccessibilitySection(
        //   accessibleNavigation: false,
        //   boldText: false,
        //   invertColors: false,
        //   textScalingFactor: false,
        // ),
        DevicePreviewScreenshot(),

        SettingsSection(),
      ],

      defaultDevice: Devices.ios.iPhone13ProMax,
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
