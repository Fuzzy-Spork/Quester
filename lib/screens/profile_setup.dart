import 'dart:ui';
import 'package:quester/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class ProfileSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF09144B),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                height: size.height * 0.1,
              ),
            ),
            Flexible(
              child: Center(
                child: Container(
                  height: size.width * 0.6,
                  width: size.width * 0.6,
                  child: FlareActor(
                    'assets/RotatingEarth.flr',
                    isPaused: false,
                    animation: 'Preview2',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'Enter your name buddy!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                showCursor: false,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF397F),
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashBoard();
                    },
                  ),
                );
              },
              child: Container(
                height: 55,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFFF397F),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Center(
                  child: Text(
                    'Let\'s Save!',
                    style: TextStyle(
                        color: Color(0xFFFF397F),
                        fontSize: 25,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
