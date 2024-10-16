import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
            Icons.search,
            size: 32,
          ),
        ),
        labelText: 'Search books',
        labelStyle: Styles.textStyle20.copyWith(
          fontFamily: kGtSectraFine,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        16,
      ),
      borderSide: BorderSide(
        color: Colors.white.withOpacity(1),
      ),
    );
  }
}
