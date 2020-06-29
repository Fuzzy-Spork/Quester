import 'package:flutter/material.dart';
import 'package:quester/models/mission/mission.dart';
import 'package:quester/screens/loading_screen.dart';

// ignore: must_be_immutable
class BottomSheet1 extends StatelessWidget {
  Mission mission;
  BottomSheet1({this.mission});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff757575),
      child: Container(
        height: size.height * 0.4,
        padding:
            EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
        decoration: BoxDecoration(
            color: Color(0xFF09144B),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              mission.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 150,
              child: Center(
                child: Text(
                  mission.desc,
                  style: TextStyle(
                      color: Color(0xFFFF397F), fontSize: 20, letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 150,
              child: Center(
                child: Text(
                  'Rewards: ${mission.xp}xp',
                  style: TextStyle(
                      color: Color(0xFFFF397F), fontSize: 25, letterSpacing: 1),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                var id = mission.id;
                print(id);
                mission.completeMission(context);
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoadingScreen2()));
              },
              child: Container(
                height: 55,
                width: 150,
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
                    'Complete',
                    style: TextStyle(
                        color: Color(0xFFFF397F),
                        fontSize: 25,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
