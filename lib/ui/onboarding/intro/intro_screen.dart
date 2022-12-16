import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/ui/onboarding/components/app_button.dart';
import 'package:rental_car_app/ui/onboarding/intro/bloc/commands.dart';
import 'package:rental_car_app/ui/onboarding/intro/bloc/intro_bloc.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/dot.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/slide_view.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with TickerProviderStateMixin {
  // we declare a variable of TabController type
  late TabController _tabController;
  // we declare a variable of IntroBloc type
  late final IntroBloc _introBloc;

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
    // we initialize the IntroBloc variable with its bloc
    _introBloc = IntroBloc();
    // we initialize the tabController variable
    _tabController = TabController(length: slides.length, vsync: this);
    // we use the addListener method for add the event in the IntroBloc
    // this event require an index
    _tabController.addListener(() {
      _introBloc.add(OnIndexChanged(_tabController.index));
    });
  }

  @override
  void dispose() {
    // clean the memory when object is used
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // we pass the bloc
      create: (_) => _introBloc,
      // since we won't be redrawing a widget, we use a listener
      child: BlocListener<IntroBloc, IntroState>(
        // listenWhen compare the previous state and current and return a bool
        // to know whether or not the listener will be execute
        listenWhen: (_, current) => current.command != null,
        listener: (context, state) async {
          final command = state.command;

          if (command is AnimateTo) {
            _tabController.animateTo(command.index);
          }
          if (command is NavigateTo) {
            await Navigator.of(context).pushReplacementNamed(Routes.signin.name);
          }

          _introBloc.add(const ClearCommand());
        },
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // each SlideView widget receive a slideInfo
                    SlideView(slideInfo: slides[0]), // in index 0
                    SlideView(slideInfo: slides[1]), // in index 1
                    SlideView(slideInfo: slides[2]), // in index 2
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Dot(index: 0),
                  SizedBox(width: 8),
                  Dot(index: 1),
                  SizedBox(width: 8),
                  Dot(index: 2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 40.0),
                    BlocBuilder<IntroBloc, IntroState>(
                      builder: (context, state) {
                        return AppButton(
                          onTap: () {
                            _introBloc.add(const OnBottomButtonTapped());
                          },
                          title: state.index == 2 ? 'Get Started' : 'Next',
                        );
                      },
                    ),
                    BlocBuilder<IntroBloc, IntroState>(
                      builder: (context, state) {
                        return Visibility(
                          maintainState: true,
                          maintainAnimation: true,
                          maintainSize: true,
                          visible: state.index < 2, // condition for hide or show the text
                          child: TextButton(
                            onPressed: () => _tabController.animateTo(2),
                            child: const Text(
                              'Skip',
                              style: TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
