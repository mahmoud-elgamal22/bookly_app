import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: CustomButton(
              title: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              title: 'Free review',
              backgroundColor: Color(0xffEf8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
