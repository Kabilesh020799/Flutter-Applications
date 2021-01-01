import 'package:flutter/material.dart';

import '../widgets/Bottom.dart';

class Tutorial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(
              'assets/images/popcorn1.png',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 80,
              bottom: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              'Choose A Tasty Dish',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 60,
            ),
            child: Text(
              'Order anything you want from your Favourite restaurant',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                wordSpacing: 3,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Bottom()
        ],
      ),
    );
  }
}
