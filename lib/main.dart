import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
