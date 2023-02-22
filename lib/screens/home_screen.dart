import 'package:flutter/material.dart';
import 'package:portfolio_gallery/widgets/bottom_widget.dart';
import 'package:portfolio_gallery/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NewChoBo',
        ),
      ),
      drawer: const Drawer(
        child: DrawerMain(),
      ),
      body: const Center(
        child: Text(
          '잘 나오는지 확인',
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
