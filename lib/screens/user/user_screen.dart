import 'package:eat_now/widgets/custom_appbar.dart';
import 'package:eat_now/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const UserScreen(),
    );
  }

  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "User"),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
