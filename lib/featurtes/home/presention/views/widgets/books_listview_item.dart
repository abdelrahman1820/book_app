import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/book_rating_row.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_listview_horizontal_item.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BooksListViewitem extends StatelessWidget {
  const BooksListViewitem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        GoRoute of;
        (context).push("/bookDetailView",extra: book);
      },
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            CustomListViewHorizobtalItem(
                imageUrl: book.volumeInfo!.imageLinks!.thumbnail!, tagg: book.id!,),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.titleMedium.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " free",
                        style: Styles.titleMedium
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRaatingRow(
                        count: book.volumeInfo!.pageCount!,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
