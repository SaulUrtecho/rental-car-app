import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/routes/routes.dart';
//import 'package:rental_car_app/ui/onboarding/signin/signin_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.routes(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green), // green theme
      initialRoute: Routes.intro.name,
    );
  }
}
