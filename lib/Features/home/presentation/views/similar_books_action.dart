import 'package:bookly_app/Features/home/presentation/views/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/ulits/styles.dart';

class SimilarBooksAction extends StatelessWidget {
  const SimilarBooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),

      ],
    );
  }
}
