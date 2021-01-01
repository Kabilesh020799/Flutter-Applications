import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Vector4.png',
        ),
        Opacity(
          opacity: 0.7,
          child: Image.asset(
            'assets/images/Vector3.png',
          ),
        ),
        Positioned(
          bottom: 20,
          right: 80,
          child: FlatButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            onPressed: () {},
            child: Text('Next'),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 15,
          child: FlatButton(
            minWidth: 40,
            onPressed: () {},
            child: Text('Skip'),
          ),
        )
      ],
    );
  }
}
