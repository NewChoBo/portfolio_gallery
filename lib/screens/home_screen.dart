import 'package:flutter/material.dart';
import 'package:portfolio_gallery/widgets/main/appbar_widget.dart';
import 'package:portfolio_gallery/widgets/main/bottom_widget.dart';
import 'package:portfolio_gallery/widgets/portfolios_widget.dart';

import '../widgets/main/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHome(),
      drawer: const Drawer(
        child: DrawerMain(),
      ),
      bottomNavigationBar: const BottomWidget(),
      body: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          Portfolios(),
          Expanded(
            child: Text('Again'),
          ),
          Text(
            '잘 나오는지 확인',
          ),
        ],
      ),
    );
  }
}
