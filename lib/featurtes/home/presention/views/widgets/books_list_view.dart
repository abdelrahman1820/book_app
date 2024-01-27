import 'package:booklyapp/core/globalwidgets/custom_error_widget.dart';
import 'package:booklyapp/featurtes/home/presention/manger/newest_books_cubit/news_books_cubit.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksState>(
      builder: (context, state) {
        if (state is NewsBooksSucess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 20.0),
                child: Padding(               
                  padding:const EdgeInsets.only(left: 8.0),
                  child: BooksListViewitem(book: state.books[index],),
                ),
              );
            },
          );
        } else if (state is NewsBooksFailure) {
          return CustomErrorWidget(errormessage: state.errMessage);
        } else {
          return const Center(child:  CircularProgressIndicator());
        }
      },
    );
  }
}
