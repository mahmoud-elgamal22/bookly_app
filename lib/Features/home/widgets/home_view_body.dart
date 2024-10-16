import 'package:bookly/Features/home/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
