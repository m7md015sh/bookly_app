import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rating',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Opacity(
          opacity: 0.7,
          child: Text(
            "($count)",
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
