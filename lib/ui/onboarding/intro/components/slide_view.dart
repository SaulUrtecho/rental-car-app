import 'package:flutter/material.dart';

class SlideView extends StatelessWidget {
  final SlideInfo slideInfo;

  const SlideView({super.key, required this.slideInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(slideInfo.img, width: 300, height: 300)],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
class SlideInfo {
  final String img;
  final String title;
  final String details;

  const SlideInfo({required this.img, required this.title, required this.details});
}
