import 'package:flutter/material.dart';
import 'package:starbucks_clonecoding_flutter/presentation/tab/delivery_screen.dart';

import 'tab/home_screen.dart';
import 'tab/more_screen.dart';
import 'tab/order_screen.dart';
import 'tab/pay_screen.dart';
import 'tab/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      const HomeScreen(),
      const PayScreen(),
      const OrderScreen(),
      const ShopScreen(),
      const MoreScreen(),
    ];

    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment,
              color: Colors.grey,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.grey,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            label: 'More',
          ),
        ],
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          highlightElevation: 1,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DeliveryScreen()),
            );
          },
          child: const Icon(Icons.delivery_dining),
        ),
      ),
    );
  }
}
