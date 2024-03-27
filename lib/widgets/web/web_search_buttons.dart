import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/web_serach_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // * Search button
            SearchButton(title: "Google Search", onPressed: () {}),

            const SizedBox(width: 10),

            // * I'm feeling lucky button
            SearchButton(title: "I'm Feeling Lucky", onPressed: () {}),
          ],
        )
      ],
    );
  }
}
