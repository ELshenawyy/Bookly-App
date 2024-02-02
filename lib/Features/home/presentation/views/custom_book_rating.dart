import 'package:bookly_app/core/ulits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(
            0xffFFDD4F,
          ),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(4587)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
