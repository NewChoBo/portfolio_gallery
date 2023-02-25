import 'dart:convert';

import 'package:portfolio_gallery/models/portfolio_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://whwjdrb1009.asuscomm.com:3000";

  //포트폴리오 목록을 가져온다.
  static Future<List<PortfolioModel>> getPortfolios() async {
    List<PortfolioModel> portfolioInstances = [];
    final url = Uri.parse('$baseUrl/portfolios');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> portfolios = jsonDecode(response.body); //리턴값은 dynamic
      for (var portfolio in portfolios) {
        final instance = PortfolioModel.fromJson(portfolio);
        portfolioInstances.add(instance);
      }
      print(portfolioInstances);
      return portfolioInstances;
    }
    throw Error();
  }
}
