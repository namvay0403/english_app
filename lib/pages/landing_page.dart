import 'package:english_app/pages/home_page.dart';
import 'package:english_app/values/app_styles.dart';
import 'package:flutter/material.dart';
// import 'package:english_app/pages/home_page.dart';
import 'package:english_app/values/app_assets.dart';
import 'package:english_app/values/app_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Welcome to', style: AppStyles.h3),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'English',
                  style: AppStyles.h2.copyWith(
                      color: AppColors.blackGrey, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Quotes"',
                    style: AppStyles.h4.copyWith(height: 0.5),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: RawMaterialButton(
                shape: const CircleBorder(),
                fillColor: AppColors.lighBlue,
                onPressed: () => {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false)
                },
                child: Image.asset(AppAsssets.rightArrow),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
