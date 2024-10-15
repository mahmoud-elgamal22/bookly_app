import 'package:bookly/core/utils/assests.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(AssestsData.logo),
        const SizedBox(height: 2),
        const Text("Read your favorite books", textAlign: TextAlign.center),
        const SizedBox(height: 22),
      ],
    );
  }
}
