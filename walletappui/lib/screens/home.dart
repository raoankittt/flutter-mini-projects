import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/button.dart';
import 'package:walletappui/util/card.dart';
import 'package:walletappui/util/list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: const Icon(
            Icons.monetization_on_outlined,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_outlined,
                    size: 32,
                    color: Colors.pink.shade200,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Cards",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ),
              ),

              // sizedBox
              const SizedBox(
                height: 25,
              ),

              // cards
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 5678.30,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 27,
                      color: Colors.deepPurple.shade400,
                    ),
                    MyCard(
                      balance: 7678.20,
                      cardNumber: 12345678,
                      expiryMonth: 20,
                      expiryYear: 30,
                      color: Colors.green.shade400,
                    ),
                    MyCard(
                      balance: 1278.02,
                      cardNumber: 12345678,
                      expiryMonth: 29,
                      expiryYear: 24,
                      color: Colors.orange.shade400,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotWidth: 6.0,
                  dotHeight: 8.0,
                ),
              ),

              const SizedBox(height: 40),

              // 3 buttons -> send , pay, bill
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyButton(
                      iconImagePath: "lib/icons/send-money.png",
                      iconText: "Send",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/credit-card.png",
                      iconText: "Pay",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/bill.png",
                      iconText: "Bills",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // column -> state + transition
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: const [
                    MyListTile(
                      iconImagePath: "lib/icons/statistics.png",
                      title: "Statistics",
                      subTitle: "Payments and Income",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/transition.png",
                      title: "Transitions",
                      subTitle: "Transitions History",
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
