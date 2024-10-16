import 'package:bookly/Features/home/presentation/view_models/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view_models/custom_card_item.dart';
import 'package:bookly/Features/home/widgets/books_action_button.dart';
import 'package:bookly/Features/home/widgets/custom_book_details_appbar.dart';
import 'package:bookly/Features/home/widgets/custom_books_images.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                const CustomDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 3,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle16.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksActionButton(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
