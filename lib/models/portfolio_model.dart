class PortfolioModel {
  final String userID, portfolioID, thum;

  PortfolioModel.fromJson(Map<String, dynamic> json)
      : userID = json['userID'],
        portfolioID = json['portfolioID'],
        thum = json['thum'];
}
