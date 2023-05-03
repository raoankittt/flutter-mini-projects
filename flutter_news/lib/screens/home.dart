import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/components/breaking_card.dart';
import 'package:flutter_news/components/news_list.dart';
import 'package:flutter_news/models/news_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Breaking News",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
              ),
              const SizedBox(
                height: 20,
              ),
              // let's create News Card
              CarouselSlider.builder(
                itemCount: NewsData.breakingNewsData.length,
                itemBuilder: (context, index, id) =>
                    BreakingNewsCard(NewsData.breakingNewsData[index]),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Recent News",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Column(
                children: NewsData.breakingNewsData
                    .map((news) => NewsListTile(data: news))
                    .toList(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomnavigator(),
    );
  }

  BottomNavigationBar _bottomnavigator() {
    return BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              size: 30.0,
            ),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.rss_feed_outlined,
                size: 30.0,
              ),
              label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
              ),
              label: "Profile"),
        ]);
  }

  AppBar _appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: const Text(
        "NewsApp",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 30.0,
          ),
        )
      ],
    );
  }
}
