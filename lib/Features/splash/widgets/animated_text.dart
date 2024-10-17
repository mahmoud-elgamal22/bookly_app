import 'package:bookly/Features/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: const Text(
            "Read your favorite books",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
