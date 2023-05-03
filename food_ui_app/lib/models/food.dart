class Food {
  String? imgUrl;
  String? name;
  String? desc;
  num? score;
  String? waitTime;
  String? cal;
  num? price;
  num? quantity;
  List<Map<String, String>>? ingredients;
  String? about;
  bool? highLight;

  Food(
      {this.imgUrl,
      this.name,
      this.desc,
      this.score,
      this.waitTime,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      this.highLight = false});

  static List<Food> generateRecommendedFoodList() {
    return [
      Food(
        imgUrl: "assets/images/dish1.png",
        name: "Soba Soup",
        desc: "No.1 in Sales",
        waitTime: "50 mins",
        score: 4.5,
        cal: "350 kcal",
        quantity: 1,
        price: 12,
        ingredients: [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        about:
            "Noodle soup refers to a variety of soups with noodles and other ingredients served in a light broth.",
        highLight: true,
      ),
      Food(
        imgUrl: "assets/images/dish2.png",
        name: "Indian Soup",
        desc: "No.2 in Sales",
        waitTime: "40 mins",
        score: 4.0,
        cal: "400 kcal",
        quantity: 1,
        price: 15,
        ingredients: [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        about:
            "Noodle soup refers to a variety of soups with noodles and other ingredients served in a light broth.",
        highLight: true,
      ),
    ];
  }



  static List<Food> generatePopularFoodList() {
    return [
      Food(
        imgUrl: "assets/images/dish3.png",
        name: "Soba Soup",
        desc: "No.1 in Sales",
        waitTime: "50 mins",
        score: 4.5,
        cal: "350 kcal",
        quantity: 1,
        price: 12,
        ingredients: [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        about:
            "Noodle soup refers to a variety of soups with noodles and other ingredients served in a light broth.",
        highLight: true,
      ),
      Food(
        imgUrl: "assets/images/dish4.png",
        name: "Indian Soup",
        desc: "No.2 in Sales",
        waitTime: "40 mins",
        score: 4.0,
        cal: "400 kcal",
        quantity: 1,
        price: 15,
        ingredients: [
          {
            "Noodle": "assets/images/ingre1.png",
          },
          {
            "Shrimp": "assets/images/ingre2.png",
          },
          {
            "Egg": "assets/images/ingre3.png",
          },
          {
            "Scallion": "assets/images/ingre4.png",
          }
        ],
        about:
            "Noodle soup refers to a variety of soups with noodles and other ingredients served in a light broth.",
        highLight: true,
      ),
    ];
  }
}
