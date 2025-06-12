import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/pages/widgets/Tile.dart';
import 'package:walletui/pages/widgets/my_cards.dart';
import 'package:walletui/pages/widgets/action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> cards = [
    {
      'balance': "5250.75",
      'cardNumber': '1234 5678 9012 3456',
      'expireMonth': "8",
      'expireYear': "25",
      'color': Colors.deepPurple[400],
    },
    {
      'balance': "2100.00",
      'cardNumber': '9876 5432 1098 7654',
      'expireMonth': "11",
      'expireYear': "24",
      'color': Colors.blue[400],
    },
    {
      'balance': "150.50",
      'cardNumber': '4567 1234 7890 1234',
      'expireMonth': "3",
      'expireYear': "27",
      'color': Colors.green[400],
    },
  ];

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // appbar
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
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
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    // plus icon
                    GestureDetector(
                      onTap: (){},
                      child:
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration:
                        BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle
                        ),
                        child:
                        Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
              //cards
              SizedBox(
                height: 250,
                width: 530,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: List.generate(cards.length, (index) {
                    final card = cards[index];
                    return MyCard(
                      balance: card['balance'],
                      cardNumber: card['cardNumber'],
                      expireMonth: card['expireMonth'],
                      expireYear: card['expireYear'],
                      color: card['color'],
                    );
                  }),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: cards.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade600,
                  dotColor: Colors.grey.shade300,
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 4,
                ),
                onDotClicked: (index) {
                  _controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              SizedBox(height: 20),
              // Button send + pay + bills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(
                    iconPath: "lib/icons/img.png",
                    label: "Send",
                    onTap: () {
                      debugPrint('Send button tapped');
                    },
                    containerColor: Colors.grey[200],
                  ),
                  ActionButton(
                    iconPath: "lib/icons/img_1.png",
                    label: "Pay",
                    onTap: () {
                      debugPrint('Bills button tapped');
                    },
                    containerColor: Colors.purple[100],
                  ),
                  ActionButton(
                    iconPath: "lib/icons/img_2.png",
                    label: "Bills",
                    onTap: () {
                      debugPrint('Pay button tapped');
                    },
                    containerColor: Colors.green[100],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Tile(
                imgPath: "lib/icons/img_3.png",
                title: "Statistics",
                subtitle: 'Payments and Icons',
                icon: Icons.navigate_next,
              ),
              Tile(
                imgPath: "lib/icons/img_4.png",
                title: "Transactions",
                subtitle: 'Transactions History',
                icon: Icons.navigate_next,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: Colors.blue.shade700,
        elevation: 8,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.blue.shade700),
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Icon(Icons.credit_card, color: Colors.grey.shade600),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.grey.shade600),
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.grey.shade600),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
