import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // we pass the enum which it contains the routes of the app
      routes: Routes.routes(context),
      // this hide the debug label
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green), // green theme
      // we define the initial route
      initialRoute: Routes.intro.name,
    );
  }
}
