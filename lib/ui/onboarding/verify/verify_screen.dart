import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/onboarding/components/app_button.dart';
import 'package:rental_car_app/ui/onboarding/verify/components/number_box.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String numberOne = '';
  String numberTwo = '';
  String numberThree = '';
  String numberFour = '';

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
          'OTP Verification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Please enter the verification code here we\n just sent you on +9188******10',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberBox(autoFocus: true, onChanged: (value) => numberOne = value),
                const SizedBox(width: 18),
                NumberBox(autoFocus: false, onChanged: (value) => numberTwo = value),
                const SizedBox(width: 18),
                NumberBox(autoFocus: false, onChanged: (value) => numberThree = value),
                const SizedBox(width: 18),
                NumberBox(autoFocus: false, onChanged: (value) => numberFour = value, isLast: true),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Haven't received the verification code?",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Resend',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 30),
            AppButton(onTap: () {}, title: 'Verify')
          ],
        ),
      ),
    );
  }
}
