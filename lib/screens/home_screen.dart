import 'package:flutter/material.dart';
import 'package:portfolio_gallery/models/portfolio_model.dart';
import 'package:portfolio_gallery/services/api_service.dart';
import 'package:portfolio_gallery/widgets/main/appbar_widget.dart';
import 'package:portfolio_gallery/widgets/main/bottom_widget.dart';
import 'package:portfolio_gallery/widgets/portfolio_widget.dart';

import '../widgets/main/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  final Future<List<PortfolioModel>> portfolios = ApiService.getPortfolios();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHome(),
      drawer: const Drawer(
        child: DrawerMain(),
      ),
      bottomNavigationBar: const BottomWidget(),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: FutureBuilder(
              future: portfolios,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Expanded(
                        child: makeList(snapshot),
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          const Text(
            '잘 나오는지 확인',
          ),
        ],
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<PortfolioModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var portfolio = snapshot.data![index];

        return Portfolio(
          userID: portfolio.userID,
          portfolioID: portfolio.portfolioID,
          thumb: portfolio.thum,
        );
      },
    );
  }
}
