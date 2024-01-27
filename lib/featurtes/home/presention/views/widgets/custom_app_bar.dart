import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.Logo,
          height: 25,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: IconButton(
            onPressed: () {
              GoRoute of;
              (context).push("/SearchView");
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 25),
          ),
        )
      ],
    );
  }
}
