import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'Pay',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_card),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'Other',
              ),
            ],
          ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/banner-starbucks-1786x642-2022.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  const Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    child: Column(
                      children: [
                        Text(
                          '피스타치오와 콜드 브루의',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '피스타치오와 콜드 브루의',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
        ),
      ),
    );
  }
}
