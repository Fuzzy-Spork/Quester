import 'package:flutter/material.dart';
import 'screens/dashboard.dart';
import 'screens/get_started.dart';
import 'services/storage_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getInstance(),
      builder: (context, AsyncSnapshot<StorageService> snapshot) {
        if (snapshot.hasError || !snapshot.hasData) {
          print('error');
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            try {
              if (snapshot.data.userInDB == null) {
                print('new user');
                return GetStarted();
              } else {
                return DashBoard(
//                  user: snapshot.data.userInDB,
                );
              }
            } catch (e) {
              print('Error: $e');
              return GetStarted();
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      },
    );
  }
}
