import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartScreen(),
    );
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Cart"),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
