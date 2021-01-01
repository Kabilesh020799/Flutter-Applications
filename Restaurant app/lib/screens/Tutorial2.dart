import 'package:flutter/material.dart';

import '../widgets/Bottom.dart';

class Tutorial2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 80,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Image.asset(
                'assets/images/Group.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Easy Payment',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Payment made easy through debit card, credit card  & more ways to pay for your food',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
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
