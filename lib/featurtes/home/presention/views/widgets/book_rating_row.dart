import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRaatingRow extends StatelessWidget {
  const BookRaatingRow(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      
      required this.count, });
  final num count;

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "7.8",
          style: Styles.titleMedium.copyWith(fontSize: 18),
        ),
        const SizedBox(
          width: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "($count)",
            style: Styles.titleMedium.copyWith(fontSize: 14),
          ),
        )
      ],
    );
  }
}
