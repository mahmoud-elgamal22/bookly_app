import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/test_image.png',
            ),
            fit: BoxFit.fill,
          ),
          color:kPrimaryColor ,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
