import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/featurtes/home/presention/views/widgets/books_listview_item.dart';
import 'package:booklyapp/featurtes/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/featurtes/search/presentation/views/widgets/search_Result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              "Search Result",
              style: Styles.titleMedium,
            ),
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
