import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/book_rating_row.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/books_action.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_listview_horizontal_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 245,
            child: CustomListViewHorizobtalItem(
              imageUrl: bookmodel.volumeInfo!.imageLinks!.smallThumbnail!, tagg: bookmodel.id!,
            )),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookmodel.volumeInfo!.title!,
          style: Styles.titleMedium.copyWith(fontSize: 30),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookmodel.volumeInfo!.authors![0],
            style: Styles.titleMedium
                .copyWith(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRaatingRow(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 112,
        ),
        const SizedBox(
          height: 10,
        ),
        const BooksAction()
      ],
    );
  }
}
