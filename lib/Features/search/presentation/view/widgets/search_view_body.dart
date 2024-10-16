import 'package:bookly/Features/home/presentation/view_models/best_seller_list_view_item.dart';
import 'package:bookly/Features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: CustomSearchTextField(),
              ),
              SizedBox(height: 14),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search Results',
                    style: Styles.textStyle18,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 22),
            child: SearchResultListView(),
          ),
        ),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BookListViewItem(),
      ),
      itemCount: 10,
    );
  }
}
