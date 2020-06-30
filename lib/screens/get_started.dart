import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:quester/screens/profile_setup.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF09144B),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: size.width * 0.9,
                width: size.width * 0.9,
                child: FlareActor(
                  'assets/RotatingEarth.flr',
                  isPaused: false,
                  animation: 'Preview2',
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Do you want to save\nthe planet?'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.03,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileSetup();
                    },
                  ),
                );
              },
              child: Container(
                height: 55,
                width: size.width * 0.4,
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
                    'Yeah!',
                    style: TextStyle(
                        color: Color(0xFFFF397F),
                        fontSize: 25,
                        letterSpacing: 1),
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
                      return ProfileSetup();
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
                    'Hell Yeah!',
                    style: TextStyle(
                        color: Color(0xFFFF397F),
                        fontSize: 25,
                        letterSpacing: 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
