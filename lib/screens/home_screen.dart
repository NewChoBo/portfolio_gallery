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
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: const SizedBox(
              height: 20,
            ),
          ),
          Expanded(
            flex: 5,
            child: FutureBuilder(
              future: portfolios,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
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
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: const Text(
                '잘 나오는지 확인',
              ),
            ),
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
