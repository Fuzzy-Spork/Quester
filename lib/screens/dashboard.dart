import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF09144B),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
            )
          ],
        ),
      ),
    );
  }
}
