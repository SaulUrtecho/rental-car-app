import 'package:flutter/material.dart';

class SlideView extends StatelessWidget {
  // we create a variable(parameter) of type slideinfo
  final SlideInfo slideInfo;

  // the slideInfo is a required named parameter
  // since it will be initialize externally from slides list[] in IntroScreen
  const SlideView({super.key, required this.slideInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // MediaQuery has several things useful among size of cellphone screen
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // we can access to slide img parameter through dot
          children: [Image.asset(slideInfo.img, width: 300, height: 300)],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // we can access to slide title parameter through dot
          children: [
            Text(
              slideInfo.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // we can access to slide details parameter through dot
          children: [
            Text(
              slideInfo.details,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}

// entity class
// this class help us to provide different parameters
// for a slide
class SlideInfo {
  final String img;
  final String title;
  final String details;

  const SlideInfo({required this.img, required this.title, required this.details});
}
