import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        hintText: "Search",
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button pressed');
            },
          ),
        ),
      ),
    );
  }
}
