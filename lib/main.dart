import 'dart:io';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:device_preview/device_preview.dart';
import 'device_preview_button.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

void main() async {
  try {
    // Try multiple paths
    await dotenv.load(fileName: "lib/config/api_keys.env");
  } catch (e) {
      print("Failed to load .env file, using environment variables");
      // Fallback to environment variables
      dotenv.env['API_KEY'] = Platform.environment['API_KEY'] ?? '';
      dotenv.env['CONTEXT_KEY'] = Platform.environment['CONTEXT_KEY'] ?? '';
  }
  runApp(
    DevicePreview(
      // backgroundColor: ,
      tools: const [
        CustomPlugin(
          apkDownloadUrl: "https://github.com/Harshit2756/flutter_google_clone/releases/download/v1.0.12/app-release.apk",
          sourceCodeUrl: "https://github.com/Harshit2756/flutter_google_clone/archive/refs/tags/v1.0.12.zip",
        ),
        DeviceSection(frameVisibility: true, orientation: false, virtualKeyboard: true, model: true),
        SettingsSection(backgroundTheme: false, toolsTheme: true),
        // SystemSection(locale: false, theme: false),
        DevicePreviewScreenshot(),
      ],
      defaultDevice: Devices.ios.iPhone13ProMax,
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
