import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/presention/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/bokk_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimillarBooksCubit>(context).featchSimillarBooks(
        cattegory: widget.bookmodel.volumeInfo!.categories![0]);
    super.initState();
    print("asdas");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookmodel: widget.bookmodel,
      ),
    );
  }
}
