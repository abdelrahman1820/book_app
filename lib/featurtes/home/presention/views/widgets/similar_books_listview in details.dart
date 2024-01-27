import 'package:booklyapp/core/globalwidgets/custom_error_widget.dart';
import 'package:booklyapp/featurtes/home/presention/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_listview_horizontal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .19,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomListViewHorizobtalItem(
                    imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!, tagg: state.books[index].id!,
                  ),
                );
              },
            ),
          );
        } else if (state is SimillarBooksFailure) {
          return CustomErrorWidget(errormessage: state.errmessage);
        } else {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.red,
              size: 75,
            ),
          );
        }
      },
    );
  }
}
