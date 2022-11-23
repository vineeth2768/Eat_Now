import 'dart:developer';

import 'package:eat_now/models/models.dart';
import 'package:flutter/material.dart';

class HeroCarouselCard extends StatelessWidget {
  const HeroCarouselCard({super.key, this.category, this.product});

  final Category? category;
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.product == null) {
          Navigator.pushNamed(
            context,
            '/catelog',
            arguments: category,
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0,
        ),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                    product == null ? category!.imageUrl : product!.imageUrl,
                    fit: BoxFit.cover,
                    width: 1000.0),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xC7000000), Color(0x00000000)],
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    product == null ? category!.name : product!.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
