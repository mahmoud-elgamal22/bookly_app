import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/splash/view_models/widgets/animated_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assests.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        Get.to(
          () => const HomeView(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
}
