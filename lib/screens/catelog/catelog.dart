import 'package:eat_now/models/category_model.dart';
import 'package:eat_now/models/models.dart';
import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:eat_now/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CateLogScreen extends StatelessWidget {
  const CateLogScreen({super.key, required this.category});

  static const String routeName = '/catelog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => CateLogScreen(category: category));
  }

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: categoryProducts[index],
              widthFactor: 2.5,
            ),
          );
        },
      ),
    );
  }
}
