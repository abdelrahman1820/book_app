import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.shape,
    required this.text,
    required this.textcolor,
  });
  final Color color;
  final OutlinedBorder shape;
  final String text;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: shape,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: Styles.titleMedium.copyWith(
            fontSize: 16,
            color: textcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
