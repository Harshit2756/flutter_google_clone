import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding:  EdgeInsets.symmetric(horizontal: size.width<=768 ? 10 :50, vertical: 15),
          child: Row(
            children: [
              // * India
              Text(
                'India',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),

              const SizedBox(width: 10),

              // * Line
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),

              const SizedBox(width: 10),

              // * circular dot (•)
              const Icon(
                Icons.circle,
                size: 12,
                color: Colors.grey,
              ),

              const SizedBox(width: 10),

              // * Pincode
              const Text(
                '411044, Pimpri-Chinchwad, Maharashtra',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        // * white line
        const Divider(
          thickness: 0,
          height: 0,
          color: Colors.white,
        ),
        // * help
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),

              const SizedBox(width: 10),

              // * Send Feedback
              Text(
                'Send Feedback',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),

              const SizedBox(width: 10),

              // * Privacy
              Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),

              const SizedBox(width: 10),

              // * Terms
              Text(
                'Terms',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
