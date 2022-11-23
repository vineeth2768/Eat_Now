import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_now/constants/colors/colors.dart';
import 'package:eat_now/models/models.dart';
import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:eat_now/widgets/hero_carousal.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductScreen(
        product: product,
      ),
    );
  }

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: product.name),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: MediaQuery.of(context).size.height / 12,
            color: baseColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: kWhiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_sharp,
                    color: kWhiteColor,
                  ),
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 20,
                  color: kWhiteColor,
                  onPressed: () {},
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                    ),
                    items: [
                      HeroCarouselCard(
                        product: product,
                      )
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 14,
                color: baseColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kWhiteColor),
                      ),
                      Text(
                        '\$ ${product.price}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kWhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ExpansionTile(
                  title: Text(
                    "Product Information",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "We are here to refresh the world and make a difference. Learn more about the Coca-Cola Company, our brands, and how we strive to do business the right way.",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ExpansionTile(
                  title: Text(
                    "Delivery Information",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "We are here to refresh the world and make a difference. Learn more about the Coca-Cola Company, our brands, and how we strive to do business the right way.",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
