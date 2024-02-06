import 'package:bookly_app/core/ulits/styles.dart';
import 'package:flutter/material.dart';
import 'book_search_list_view.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          BookSearchListView(),
        ],
      ),
    );
  }
}
