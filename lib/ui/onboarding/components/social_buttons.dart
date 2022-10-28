import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  /// class than create the cards for social media
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.175,
                vertical: MediaQuery.of(context).size.height * 0.02),
            child: Image.network(
              'https://clipground.com/images/png-google-logo.jpg',
              width: 30,
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.175,
                vertical: MediaQuery.of(context).size.height * 0.02),
            child: Image.network(
              'https://www.vhv.rs/file/max/19/199530_facebook-logo-png.png',
              width: 30,
            ),
          ),
        )
      ],
    );
  }
}
