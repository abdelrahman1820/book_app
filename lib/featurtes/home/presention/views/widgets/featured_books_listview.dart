import 'package:booklyapp/core/globalwidgets/custom_error_widget.dart';
import 'package:booklyapp/featurtes/home/presention/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_listview_horizontal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedbooksState>(
      builder: (context, state) {
        if (state is FeaturedbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {
                      GoRoute of;
                      (context)
                          .push("/bookDetailView", extra: state.books[index]);
                    },
                    child: CustomListViewHorizobtalItem(
                      imageUrl: state
                              .books[index].volumeInfo!.imageLinks!.thumbnail ??
                          "https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_sm_2x/f_auto/primary/ix5rdbcfnwifaf3oeozv",
                      tagg:state.books[index].id!,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedbooksFailure) {
          return CustomErrorWidget(errormessage: state.errMessage);
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
