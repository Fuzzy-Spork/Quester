import 'package:flutter/material.dart';
import 'package:quester/models/user/user.dart';
import 'package:quester/screens/splash_orig.dart';
import 'dashboard.dart';

class LoadingScreen2 extends StatefulWidget {
  final User user;
  LoadingScreen2({this.user});
  @override
  _LoadingScreen2State createState() => _LoadingScreen2State();
}

class _LoadingScreen2State extends State<LoadingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      fileName: 'assets/RotatingEarth.flr',
      animation: 'Preview2',
      seconds: 1,
      loaderColor: Color(0xFFFF397F),
      navigateAfterSeconds: new DashBoard(user: widget.user),
      backgroundColor: Color(0xFF09144B),
      loadingText: Text(
        'quester',
        style: TextStyle(
            fontSize: 20, fontFamily: 'MuseoModerno', color: Color(0xFFFF397F)),
      ),
    );
  }
}
