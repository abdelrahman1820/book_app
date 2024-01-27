import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/books_list_view.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 15,
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("Best Seller", style: Styles.titleMedium),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: BooksListView(),
          ),
        )
      ],
    );
  }
}
