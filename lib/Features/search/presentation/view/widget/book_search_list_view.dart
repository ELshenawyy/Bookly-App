import 'package:flutter/material.dart';

import '../../../../home/presentation/views/custom_best_seller_view_item.dart';

class BookSearchListView extends StatelessWidget {
  const BookSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
