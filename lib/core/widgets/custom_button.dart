import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      // this.onPressed,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor,
      required this.title});
  // final void Function()? onPressed;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
