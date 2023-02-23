import 'package:flutter/material.dart';

class Portfolios extends StatelessWidget {
  const Portfolios({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          Image.asset(
            'assets/images/example.jpg',
          ),
          Image.asset(
            'assets/images/example1.jpg',
          ),
          Image.asset(
            'assets/images/example.jpg',
          ),
          Image.asset(
            'assets/images/example.jpg',
          ),
          Image.asset(
            'assets/images/example.jpg',
          ),
        ],
      ),
    );
  }
}
