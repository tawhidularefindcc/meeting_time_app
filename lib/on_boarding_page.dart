import 'package:flutter/material.dart';
import 'package:meeting_time_app/utils/custom_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/leading_logo.png'),
                Image.asset('assets/slider.png'),
              ],
            ),
            const SizedBox(height: 50),
            Image.asset('assets/onboarding_logo_icon.png'),
            const SizedBox(height: 15),
            const Text(
              "Focus on the work.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(onPressed: () {}, text: 'SLOTS'),
                CustomButton(onPressed: () {}, text: 'HOME'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
