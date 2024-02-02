import 'package:flutter/material.dart';

import '../../../../core/ulits/styles.dart';
import 'book_action.dart';
import 'custom_book_item.dart';
import 'custom_book_rating.dart';

class BooksDetailsScreen extends StatelessWidget {
  const BooksDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.23),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const BooksAction(),
      ],
    );
  }
}
