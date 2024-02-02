import 'package:bookly_app/Features/home/presentation/views/similar_books_action.dart';
import 'package:flutter/material.dart';
import 'books_details_screen.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SafeArea(
                  child: CustomBookDetailsAppBar(),
                ),
                BooksDetailsScreen(),
                Expanded(
                  child: SizedBox(
                    height: 25,
                  ),
                ),
                SimilarBooksAction(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
