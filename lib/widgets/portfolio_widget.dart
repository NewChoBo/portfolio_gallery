import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final String userID, portfolioID, thumb;

  const Portfolio({
    super.key,
    required this.userID,
    required this.portfolioID,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.5),
                ),
              ]),
          child: Image.network(thumb),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userID,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

/*

child: Expanded(
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
      ),



*/
