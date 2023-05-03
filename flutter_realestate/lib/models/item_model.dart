class Item {
  String? title;
  String? caterogry;
  String? thumbnail;
  String? location;
  int? price;

  Item({this.title, this.caterogry, this.thumbnail, this.location, this.price});

  static List<Item> dummyData = [
    Item(
        title: "Private room in farm stay hosted by Amith K",
        caterogry: "Farming's",
        location: "Kalasa, Karnataka, India",
        price: 1200,
        thumbnail:
            "https://a0.muscache.com/im/pictures/e13a992d-bf31-4c1d-972a-b4131bcff1ba.jpg?im_w=1200"),
    Item(
        title: "A plantation homestay nestled in the lap of nature",
        caterogry: "Tour & Home",
        location: "Periyar, Kerala, India",
        price: 1600,
        thumbnail:
            "https://a0.muscache.com/im/pictures/ae654a2a-a0a4-42cd-8d1f-f8cc97c005cc.jpg?im_w=1200"),
    Item(
        title: "S4 - Elegant, bright, pool-view villa, South Goa",
        caterogry: "Home & Farm",
        location: "Varca, Goa, India",
        price: 2000,
        thumbnail:
            "https://a0.muscache.com/im/pictures/c25c9546-5a2e-4092-bbae-d294836014e2.jpg?im_w=1200"),
    Item(
        title: "RiverTree Duplex- Riverside Plantation TreehouseAC",
        caterogry: "Home & Resotre",
        location: "Kottathara, Kerala, India",
        price: 1200,
        thumbnail:
            "https://a0.muscache.com/im/pictures/e13a992d-bf31-4c1d-972a-b4131bcff1ba.jpg?im_w=1200"),
    Item(
        title: "Ba hao Residence x MAITRI CHIT ROOM",
        caterogry: "Superhost",
        location: "Bangkok, Krung Thep Maha Nakhon, Thailand",
        price: 1300,
        thumbnail:
            "https://a0.muscache.com/im/pictures/31b5920d-16b1-494e-ac27-a71dbd09ce01.jpg?im_w=1200"),
    Item(
        title: "Romantic shelter with a great view",
        caterogry: "FrontLake",
        location: "Savonlinna, Finland",
        price: 3300,
        thumbnail:
            "https://a0.muscache.com/im/pictures/96cbd45e-a50d-44b8-973f-a78b2f39af85.jpg?im_w=1200"),
    Item(
        title: "Luxury Stay @Rs3000 perhead including 3 meals",
        caterogry: "Moutains",
        location: "Kodagu, Karnataka, India",
        price: 1900,
        thumbnail:
            "https://a0.muscache.com/im/pictures/2ec171f9-21e8-4452-8d3a-9b2329868bdf.jpg?im_w=1200"),
  ];
}
