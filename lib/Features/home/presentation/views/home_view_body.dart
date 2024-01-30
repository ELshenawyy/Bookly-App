import 'package:bookly_app/Features/home/presentation/views/featured_list_view.dart';
import 'package:bookly_app/core/ulits/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Style.mediumText,
          ),
        ],
      ),
    );
  }
}
