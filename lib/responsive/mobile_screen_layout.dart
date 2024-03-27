import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/home_search.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/translation_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        // * Menu button
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),

        // * ALL and IMAGES tabs
        title: SizedBox(
          width: size.width * 0.56,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              indicatorColor: blueColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IMAGES'),
              ],
            ),
          ),
        ),
        actions: [
          // * More apps
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apps,
              color: Colors.grey,
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
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // * home body
                  Column(
                    children: [
                      Search(),
                      SizedBox(height: 20),
                      TranslationButtons(),
                    ],
                  ),
                  // * footer
                  MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
