import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/app_button.dart';
import 'package:rental_car_app/ui/onboarding/intro/components/social_buttons.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Signin', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24)),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text('Signin with following option', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const SocialButtons(),
            const SizedBox(height: 50),
            const Text('Phone number', style: TextStyle(fontSize: 16)),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
            const SizedBox(height: 60),
            AppButton(onTap: () => Navigator.of(context).pushNamed(Routes.signup.name), title: 'Sign In'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Routes.signup.name),
                    child: const Text(
                      'Signup',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ))
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
