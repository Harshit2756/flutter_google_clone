import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/web/web_search_buttons.dart';
import 'package:google_clone/widgets/home_search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          // * Gmail
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // * Images
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(width: 10),

          // * More apps
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apps,
              color: primaryColor,
            ),
          ),

          const SizedBox(width: 10),
          // * Sign in button
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1a73eb),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            // * home body
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(height: 20),
                      SearchButtons(),
                      SizedBox(height: 20),
                      TranslationButtons(),
                    ],
                  ),
                  WebFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
