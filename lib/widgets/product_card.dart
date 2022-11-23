import 'package:eat_now/constants/colors/colors.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
  }) : super(key: key);

  final Product product;
  final double widthFactor;

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 5.5,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 2,
            left: 4,
            right: 4,
            child: Container(
              height: MediaQuery.of(context).size.height / 16,
              width: MediaQuery.of(context).size.width / 3,
              color: baseColor,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$ ${product.price}",
                          style: const TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      color: kWhiteColor,
                      icon: const Icon(Icons.add_circle),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
