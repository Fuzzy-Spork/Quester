import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingScreen2 extends StatefulWidget {
  @override
  _LoadingScreen2State createState() => _LoadingScreen2State();
}

class _LoadingScreen2State extends State<LoadingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      loaderColor: Color(0xFFFF397F),
      navigateAfterSeconds: new DashBoard(),
      backgroundColor: Color(0xFF09144B),
      loadingText: Text(
        'quester',
        style: TextStyle(
            fontSize: 20, fontFamily: 'MuseoModerno', color: Color(0xFFFF397F)),
      ),
    );
  }
}
