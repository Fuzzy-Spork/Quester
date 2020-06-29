import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quester/components/mission_card.dart';
import 'package:quester/models/mission/mission.dart';
import 'package:quester/models/user/user.dart';
import 'package:quester/models/mission/missions.dart';
import 'package:quester/services/storage_service.dart';

class DashBoard extends StatefulWidget {
  final User user;
  DashBoard({this.user});
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Widget getSlider(User user) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 10),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Color(0xFF09144B),
          inactiveTrackColor: Colors.grey,
          overlayColor: Color(0x29EB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 13.0),
        ),
        child: Slider(
          onChanged: (x) {},
          value: user.totalXP.toDouble(),
          min: (((user.totalXP ~/ 50)) * 50).toDouble(),
          max: (((user.totalXP ~/ 50) + 1) * 50).toDouble(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: StorageService.getInstance(),
      builder: (context, AsyncSnapshot<StorageService> snapshot) {
        if (snapshot.data.userInDB == null) {
          return Container();
        } else {
          User user = snapshot.data.userInDB;
//          if(user.totalXP%50 == 0 && user.totalXP != 0){
//            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelUpSplashScreen()));
//          }
          return Container(
            color: Color(0xFF09144B),
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Color(0xFF09144B),
                body: Column(
                  children: [
                    Container(
                      height: size.height * 0.22,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              GestureDetector(
                                onDoubleTap: () {
                                  showAboutDialog(
                                      context: context,
                                      applicationName: 'Quester',
                                      children: [
                                        Text('Created by Sehej and Manish'),
                                        SizedBox(height: size.height *0.01,),
                                        Text('Rotating Earth Animation created in Rive, forked from Derek Knight'),
                                        Text('Rotating Trophy Animation created in Rive, forked from Angela Boyadjian'),
                                      ]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    'q',
                                    style: TextStyle(
                                      color: Color(0xFFFF397F),
                                      fontFamily: 'MuseoModerno',
                                      fontSize: 35,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Hey',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  user.name.toUpperCase(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Level',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  (((user.totalXP ~/ 50)).toString()),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * 0.67,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, right: 10),
                                  child: Text(
                                    'Level Up',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            getSlider(user),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Text(
                                    (((user.totalXP ~/ 50)) * 50).toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    (((user.totalXP ~/ 50) + 1) * 50)
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 10),
                                  child: Text(
                                    'Repeatable Missions',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: SizedBox(
                                height: size.height * 0.2,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: getDaily(),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    'Active Missions',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: SizedBox(
                                height: size.height * 0.2,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: getActive(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
//        print(snapshot.data);
      },
    );
  }

  List<Widget> getDaily() {
    List<Widget> lists = [];
    for (var mission in missions) {
      if (mission.category == Category.Repeatable) {
        try {
          if (mission.completionReport.completionDate
                  .difference(DateTime.now())
                  .inDays >
              1) {
            lists.add(MissionCard(
              mission: mission,
            ));
          }
        } catch (e) {
          lists.add(MissionCard(
            mission: mission,
          ));
        }
      }
    }
    return lists;
  }

  List<Widget> getActive() {
    List<Widget> lists = [];
    for (var mission in missions) {
      if (mission.category == Category.Active &&
          mission.status != Status.Completed) {
        lists.add(MissionCard(
          mission: mission,
        ));
      }
    }
    return lists;
  }
}
