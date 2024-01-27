import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/similar_books_listview%20in%20details.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "you can also like",
          style: Styles.titleMedium
              .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        const SimilarBooksListView(),
      ],
    );
  }
}
