import 'package:flutter/material.dart';

import '../widgets/Bottom.dart';

class Tutorial3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Image.asset(
                'assets/images/restaurant1.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Enjoy the Taste',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                ),
              ),
            ),
            Bottom()
          ],
        ),
      ),
    );
  }
}
