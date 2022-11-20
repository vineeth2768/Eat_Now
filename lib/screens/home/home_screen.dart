import 'package:carousel_slider/carousel_slider.dart';

import 'package:eat_now/models/models.dart';
import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:eat_now/widgets/hero_carousal.dart';

import 'package:eat_now/widgets/product_card_carosual.dart';
import 'package:eat_now/widgets/section_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Eat Now"),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Column(
        children: [
          SizedBox(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2,
                viewportFraction: 1,
                enableInfiniteScroll: true,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
          ),

          //**********   Product Card  ************//

          const SectionTile(
            title: "RECOMMENDED",
          ),

          ProductCardCarosual(
            products: Product.products
                .where((product) => product.isRecommended)
                .toList(),
          ),
          const SectionTile(
            title: "MOST POPULAR",
          ),
          ProductCardCarosual(
            products:
                Product.products.where((product) => product.isPopular).toList(),
          ),
        ],
      ),
    );
  }
}
