import 'package:bookly/core/utils/assests.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
      
        bottom: 30,
        top: 60,
      ),
      child: Row(
        children: [
          Image.asset(
            AssestsData.logo,
            height: 24,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_sharp,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
