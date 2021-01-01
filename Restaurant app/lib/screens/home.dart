import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'F',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'OO',
                      style: TextStyle(
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                      text: 'D',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ]),
            ),
            Text('No waiting for food',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ))
          ]),
        ),
      ),
    );
  }
}
