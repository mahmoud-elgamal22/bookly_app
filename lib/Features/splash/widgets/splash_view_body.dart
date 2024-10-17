// ignore_for_file: use_build_context_synchronously

import 'package:bookly/Features/splash/widgets/animated_text.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assests.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

late AnimationController animationController;
late Animation<Offset> animation;

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigateToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(AssestsData.logo),
        const SizedBox(height: 2),
        const AnimatedText(),
      ],
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1020),
    );
    animation = Tween(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    animation.addListener(
      () {
        setState(() {});
      },
    );
  }

  void navigateToHomePage() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      },
    );
  }
}
