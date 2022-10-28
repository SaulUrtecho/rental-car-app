import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/onboarding/components/app_button.dart';
import 'package:rental_car_app/ui/onboarding/components/social_buttons.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        centerTitle: true,
        title: const Text(
          'Signup',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text('Signup with following option', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const SocialButtons(),
            const SizedBox(height: 30),
            const Text('Name', style: TextStyle(fontSize: 16)),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: 'Enter your name',
                ),
              ),
            ),
            // todo repeat the preview code
            const SizedBox(height: 20),
            const Text('Email Id', style: TextStyle(fontSize: 16)),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: 'Enter your email id',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Phone number', style: TextStyle(fontSize: 16)),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
            const SizedBox(height: 60),
            AppButton(
              onTap: () {},

              /// todo make the OTP verification
              title: 'Sign Up',
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Routes.signin.name),
                    child: const Text(
                      'Signin',
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
