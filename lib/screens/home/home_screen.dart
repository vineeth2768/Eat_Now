import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_now/models/category_model.dart';
import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:eat_now/widgets/hero_carousal.dart';
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
      body: SizedBox(
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
    );
  }
}
