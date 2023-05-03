import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MARVEL ARTIST ROW
          const MainArtist(),

          // BEST MOVIES TITLE
          const MyTitle(title: "Best Movie"),

          // BEST MOVIE ROW
          Container(
            height: 245,
            padding: const EdgeInsets.only(left: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                MovieWidget(
                  movieImage: "assets/images/shazam-poster.jpeg",
                  movieTitle: "Shazam Gods",
                  movieType: "Action, Adventure",
                ),
                MovieWidget(
                  movieImage: "assets/images/the-avengers-poster.jpeg",
                  movieTitle: "The Avengers",
                  movieType: "Action, Si-FI",
                ),
                MovieWidget(
                  movieImage:
                      "assets/images/captain-america-civil-war-poster.jpeg",
                  movieTitle: "Captain America 3",
                  movieType: "Action, SuperHero",
                ),
                MovieWidget(
                  movieImage:
                      "assets/images/avengers-age-of-ultron-poster.jpeg",
                  movieTitle: "Avengers Age",
                  movieType: "Action, Si-Fi",
                ),
              ],
            ),
          ),

          // USER MOVIE CHOOSE TITLE
          const MyTitle(title: "User Choose"),

          // USER MOVIE CHOOSE
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: const [
                  MovieHorizontalCard(),
                  MovieHorizontalCard(),
                  MovieHorizontalCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieHorizontalCard extends StatelessWidget {
  const MovieHorizontalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/the-avengers-poster.jpeg",
                    width: 80,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),

                // SIZED BOX
                const SizedBox(width: 15),
                // MOVIE DESCRIPTION COLUMN
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "The Avengers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    // SIZED BOX
                    const SizedBox(height: 5),
                    Container(
                      child: Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber, size: 12),
                          // SIZED BOX
                          SizedBox(width: 8),
                          Icon(Icons.star, color: Colors.amber, size: 12),
                          // SIZED BOX
                          SizedBox(width: 8),
                          Icon(Icons.star, color: Colors.amber, size: 12),
                          // SIZED BOX
                          SizedBox(width: 8),
                          Icon(Icons.star, color: Colors.amber, size: 12),
                          // SIZED BOX
                          SizedBox(width: 8),
                          Icon(Icons.star, color: Colors.grey, size: 12),
                          // SIZED BOX
                          SizedBox(width: 8),
                          // SIZED BOX
                          SizedBox(height: 5),
                          // TEXT RATING
                          Text(
                            "8.7",
                            style: TextStyle(color: Colors.amber, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "Action, Si-Fi",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.add, size: 30),
            )
          ],
        ),
      ),
    );
  }
}

class MyTitle extends StatelessWidget {
  final String title;
  const MyTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}

class MovieWidget extends StatelessWidget {
  final movieImage;
  final movieTitle;
  final movieType;
  const MovieWidget({
    super.key,
    required this.movieImage,
    required this.movieTitle,
    required this.movieType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "$movieImage",
                width: 130,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            // SIZED BOX
            const SizedBox(height: 8),
            // MOVIE TITLE
            Text(
              movieTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            // SIZED BOX
            const SizedBox(height: 2),

            // MOVIE TYPE
            Text(
              movieType,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

class MainArtist extends StatelessWidget {
  const MainArtist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MARVEL ARTIST IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/robert-downey-jr.jpeg",
              width: 200,
              height: 200,
            ),
          ),

          // MARVEL ARTIST NAME
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Robert Downey Jr",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),

              // SIZED BOX
              const SizedBox(height: 10),

              // MARVEL ARTIST RATING
              Container(
                child: Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    // SIZED BOX
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.amber),
                    // SIZED BOX
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.amber),
                    // SIZED BOX
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.amber),
                    // SIZED BOX
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.grey),
                    // SIZED BOX
                    SizedBox(width: 8),
                    // TEXT RATING
                    Text(
                      "8.7",
                      style: TextStyle(color: Colors.amber, fontSize: 18),
                    )
                  ],
                ),
              ),

              // SIZED BOX
              const SizedBox(height: 10),

              // MARVEL ARTIST MAIN ROLES
              const Text(
                "Iron Man, Sherlock Homeuse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // SIZED BOX
              const SizedBox(height: 10),

              // MARVEL ARTIST DESCRIPTION
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  "Robert John Downey Jr. is an American actor and producer. His career has been by critical and popular success in his youth.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LEFT TITLE
            const Text(
              "Popular Marvel Movies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // RIGHT SEARCH ICON
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 100);
}
