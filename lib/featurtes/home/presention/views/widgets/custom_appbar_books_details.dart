import 'package:flutter/material.dart';

class CustomAppBarBooksDetails extends StatelessWidget {
  const CustomAppBarBooksDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.card_travel_sharp),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
