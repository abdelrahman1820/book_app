import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/books_details_sectio.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_appbar_books_details.dart';

import 'package:booklyapp/featurtes/home/presention/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppBarBooksDetails(),
                const SizedBox(
                  height: 10,
                ),
                BookDetailsSection(bookmodel: bookmodel,),
                const Expanded(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SimilarBooksSection(),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
