import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // * Google logo
        Center(
          child: Image.asset(
            'assets/images/google-logo.png',
            height: size.width > 768 ? size.height * 0.12 : size.height * 0.07,
          ),
        ),

        const SizedBox(height: 20),

        // * Search bar
        SizedBox(
          width: size.width > 768 ? size.width * 0.4 : size.width * 0.8,
          // height: size.width > 768 ? null : size.height * 0.1,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => SearchScreen(
                        searchQuery: query, start: '0',
                      )),
                ),
              );
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: searchBorder),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              hintText: 'Search Google or type a URL',
              prefixIcon: const Icon(
                Icons.search,
                color: searchBorder,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic,
                  color: searchBorder,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
