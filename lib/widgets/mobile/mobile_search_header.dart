import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class MobileSearchHeader extends StatelessWidget {
  const MobileSearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28).copyWith(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // * Google logo
                Image.asset(
                  'assets/images/google-logo.png',
                  height: 30,
                  width: 92,
                ),
                // * Sign in button
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
          ),
          // * Search bar
          Row(
            children: [
              Container(
                width: size.width * 0.8,
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
        ],
      ),
    );
  }
}
