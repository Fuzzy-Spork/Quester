import 'package:flutter/material.dart';
import 'package:quester/screens/splash_orig.dart';
import 'dashboard.dart';

class LevelUpSplashScreen extends StatefulWidget {
  @override
  _LevelUpSplashScreenState createState() => _LevelUpSplashScreenState();
}

class _LevelUpSplashScreenState extends State<LevelUpSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
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
