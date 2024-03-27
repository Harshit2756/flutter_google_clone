// ignore_for_file: unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String title;
  final String linkToGo;
  final String description;

  const SearchResultComponent({
    super.key,
    required this.link,
    required this.title,
    required this.linkToGo,
    required this.description,
  });

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.link,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunch(widget.linkToGo)) {
                await launch(widget.linkToGo);
              } else {
                throw 'Could not launch ${widget.linkToGo}';
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Link
                Text(
                  widget.link.replaceAll('/', '>'),
                  style: TextStyle(
                    color: const Color(0xff202124),
                    fontSize: 14,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
                // * Title
                Text(
                  widget.title,
                  style: TextStyle(
                    color: blueColor,
                    fontSize: 20,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        // *Text Description
        Text(
          widget.description,
          style: const TextStyle(
            color: primaryColor,
            fontSize: 14,
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
