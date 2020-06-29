import 'package:flutter/material.dart';
import 'package:quester/models/user/user.dart';
import 'package:quester/screens/dashboard.dart';
import 'package:quester/screens/splash_orig.dart';

class LevelUpSplashScreen extends StatefulWidget {
  final User user;
  LevelUpSplashScreen({this.user});
  @override
  _LevelUpSplashScreenState createState() => _LevelUpSplashScreenState();
}

class _LevelUpSplashScreenState extends State<LevelUpSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      fileName: 'assets/Trophy.flr',
      animation: 'go',
      seconds: 5,
      loaderColor: Color(0xFFFF397F),
      navigateAfterSeconds: DashBoard(),
      backgroundColor: Color(0xFF09144B),
      loadingText: Text(
        'quester',
        style: TextStyle(
            fontSize: 20, fontFamily: 'MuseoModerno', color: Color(0xFFFF397F)),
      ),
    );
  }
}
