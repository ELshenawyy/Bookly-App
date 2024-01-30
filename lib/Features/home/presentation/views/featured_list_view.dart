import 'package:bookly_app/Features/home/presentation/views/custom_list_view_item.dart';
import 'package:flutter/material.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,

      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListViewItem(),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
