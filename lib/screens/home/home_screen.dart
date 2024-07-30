import 'package:flutter/material.dart';
import 'package:furniture/screens/home/widgets/home_app_bar.dart';
import 'package:furniture/screens/home/widgets/home_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
