import 'package:eat_now/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
          color: baseColor,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 20,
              fontFamily: "Avenir",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
            icon: const Icon(
              Icons.favorite,
              color: baseColor,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
