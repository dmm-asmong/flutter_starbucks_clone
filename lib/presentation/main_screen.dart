import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
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
                  left: 16.0,
                  bottom: 16.0,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '피스타치오와 콜드 브루의',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '깔끔하고 고소한 만남!',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 4.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '21',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            Text(
                              'until Gold Level',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // LinearProgressIndicator(
                    //   value: 0.8,
                    //   backgroundColor: Colors.grey,
                    //   color: Colors.green,
                    //   minHeight: 8.0,
                    //   borderRadius: Radius.circular(10),
                    // ),
                    StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 32,
                      size: 8,
                      padding: 0,
                      selectedColor: Colors.green,
                      unselectedColor: Colors.white,
                      roundedEdges: Radius.circular(10),
                      selectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.green, Colors.white],
                      ),
                      unselectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Colors.grey],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: Colors.black87,
                      ),
                      Text(
                        '''What's New''',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.black87,
                      ),
                      Text(
                        'Coupon',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Spacer(),
                      Badge(
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Quick Order',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'My 메뉴',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/starbucks-1281880_1280.jpg',
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                '''What's New''',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 300.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 8.0, 0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/806fec30372944076b3e4b6376a2634f.png',
                              width: 300,
                            ),
                          ),
                          const Text(
                            '언더마이카 콜라보 매장',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget BottomNavBar() {
  return BottomNavigationBar(
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
  );
}

