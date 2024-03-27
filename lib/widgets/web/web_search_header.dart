import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class WebSearchHeader extends StatelessWidget {
  const WebSearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28).copyWith(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // * Google logo
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 4),
                child: Image.asset(
                  'assets/images/google-logo.png',
                  height: 30,
                  width: 92,
                ),
              ),
              // * Search bar
              const SizedBox(width: 27),
              Container(
                width: size.width * 0.45,
                height: 44,
                decoration: BoxDecoration(
                  color: searchColor,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: searchColor),
                ),
                child: TextField(
                  onSubmitted: (query) {
                    if (query.trim() != "") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(
                            searchQuery: query.trim(),
                          ),
                        ),
                      );
                    }
                  },
                  style: const TextStyle(fontSize: 16),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.all(20).copyWith(right: 30),
                    constraints: const BoxConstraints(maxWidth: 150),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onPressed: () {},
                          icon: const Icon(Icons.mic, color: Colors.grey),
                        ),
                        IconButton(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: ((context) => const SearchScreen(
                                      searchQuery: 'query',
                                      start: '0',
                                    )),
                              ),
                            );
                          },
                          icon: Icon(Icons.search, color: Colors.blue.shade200),
                        ),
                      ],
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          // * Icons
          Row(
            children: [
              // settings icon button
              IconButton(
                onPressed: () {},
                splashRadius: 20,
                splashColor: const Color(0xff424548),
                tooltip: 'Quick settings',
                icon: const Icon(Icons.settings_outlined, color: Colors.white),
              ),

              // apps icon button
              IconButton(
                onPressed: () {},
                splashRadius: 20,
                tooltip: 'Google apps',
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                // splashColor: const Color(0xff424548),
                icon: const Icon(Icons.apps_rounded, color: Colors.white),
              ),
              const SizedBox(width: 10),

              // sign in button
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                height: 45,
                minWidth: 100,
                color: const Color.fromARGB(255, 82, 133, 200),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
