import 'package:flutter/material.dart';
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
            Row(
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
            ),
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
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(Routes.signup.name),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  color: Theme.of(context).primaryColor,
                ),
                width: double.infinity,
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
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
