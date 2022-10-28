import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/dot.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/slide_view.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

// here is created the tapview
class _IntroScreenState extends State<IntroScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;
  // list of objects type SlideInfo
  final List<SlideInfo> slides = const [
    SlideInfo(
      img: 'assets/img/1.jpg',
      details: 'The ease of renting a car at any time!',
      title: 'Welcome to our empire',
    ),
    SlideInfo(
      img: 'assets/img/2.jpg',
      title: 'Select your dream car',
      details: 'Travel in the car you like best for your total comfort',
    ),
    SlideInfo(
      img: 'assets/img/3.jpg',
      title: 'Enjoy your ride',
      details: 'Travel safely with our high-quality cars',
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: slides.length, vsync: this);
    _tabController.addListener(() {
      setState(() => _index = _tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SlideView(slideInfo: slides[0]),
                SlideView(slideInfo: slides[1]),
                SlideView(slideInfo: slides[2]),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(index: 0, currentIndex: _index),
              const SizedBox(width: 8),
              Dot(index: 1, currentIndex: _index),
              const SizedBox(width: 8),
              Dot(index: 2, currentIndex: _index),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                GestureDetector(
                  onTap: () {
                    if (_index < 2) {
                      _tabController.animateTo(_index + 1);
                    } else {
                      Navigator.of(context).pushReplacementNamed(Routes.signin.name);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Theme.of(context).primaryColor,
                    ),
                    width: double.infinity,
                    child: Text(
                      _index == 2 ? 'Get Started' : 'Next',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Visibility(
                  maintainState: true,
                  maintainAnimation: true,
                  maintainSize: true,
                  visible: _index < 2, // condition for hide or show the text
                  child: TextButton(
                    onPressed: () => _tabController.animateTo(2),
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
