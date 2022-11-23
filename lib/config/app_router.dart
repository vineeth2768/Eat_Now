// ignore_for_file: no_duplicate_case_values

import 'dart:developer';

import 'package:eat_now/models/category_model.dart';
import 'package:eat_now/models/models.dart';
import 'package:eat_now/screens/cart/cart_screen.dart';
import 'package:eat_now/screens/catelog/catelog.dart';
import 'package:eat_now/screens/home/home_screen.dart';
import 'package:eat_now/screens/product/product_screen.dart';
import 'package:eat_now/screens/user/user_screen.dart';
import 'package:eat_now/screens/wishlist/wishlist_screen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenrateRoute(RouteSettings settings) {
    log('This is route:${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CateLogScreen.routeName:
        return CateLogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("Something want's Error!"),
        ),
      ),
    );
  }
}
