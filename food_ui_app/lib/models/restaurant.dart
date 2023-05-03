import 'food.dart';

class Restaurant {
  String? name;
  String? waitTime;
  String? distance;
  String? label;
  String? logoUrl;
  String? desc;
  num? score;
  Map<String, List<Food>>? menu;

  Restaurant(
      {this.name,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu});

  static Restaurant generateRestaurantList() {
    return Restaurant(
        name: "Restaurant",
        waitTime: "20-30 min",
        distance: "2.4km",
        label: "Restaurant",
        logoUrl: "assets/images/res_logo.png",
        desc: "Orange Sandwiches is delicious",
        score: 4.8,
        menu: {
          "Recommend": Food.generateRecommendedFoodList(),
          "Popular": Food.generatePopularFoodList(),
          "Noodles": [],
          "Pizza": []
        });
  }
}
