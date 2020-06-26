import 'package:flutter/material.dart';

class ProfileSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: size.height / 3,
            color: Color(0xFF09144B),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
