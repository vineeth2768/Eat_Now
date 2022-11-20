import 'package:flutter/material.dart';

import '../models/category_model.dart';

class HeroCarouselCard extends StatelessWidget {
  const HeroCarouselCard({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0,
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imageUrl,
                  fit: BoxFit.cover, width: 1000.0),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xC7000000), Color(0x00000000)],
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  category.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
