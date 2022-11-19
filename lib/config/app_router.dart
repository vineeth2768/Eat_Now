// ignore_for_file: no_duplicate_case_values

import 'dart:developer';

import 'package:eat_now/screens/cart/cart_screen.dart';
import 'package:eat_now/screens/home/home_screen.dart';
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
