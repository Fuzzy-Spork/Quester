import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quester/components/mission_card.dart';
import 'package:quester/models/mission/mission.dart';
import 'bottom_sheet.dart';
import 'package:quester/screens/splash_screen.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    var height = 50.0;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
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
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'q',
                          style: TextStyle(
                            color: Color(0xFFFF397F),
                            fontFamily: 'MuseoModerno',
                            fontSize: 35,
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
                          'Manish'.toUpperCase(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w100),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
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
                          '2'.toUpperCase(),
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
                    height: 20,
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
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 10),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Color(0xFF09144B),
                          inactiveTrackColor: Colors.grey,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 13.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 13.0),
                        ),
                        child: Slider(
                          value: height,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            '0',
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
                            '100',
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
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: Text(
                            'Daily Missions',
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
                          children: [
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF0D5051),
                              color2: Color(0xFF93FD70),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFFFC210D),
                              color2: Color(0xFFF7CE38),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFFFF3E9D),
                              color2: Color(0xFF0E1F4D),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF4CA9DF),
                              color2: Color(0xFF292E91),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF6CD0FF),
                              color2: Color(0xFF1C2E4C),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
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
                          children: [
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF63E5C5),
                              color2: Color(0xFF14366F),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFFFFAE0D),
                              color2: Color(0xFFF9E866),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF23494A),
                              color2: Color(0xFFBFFFC7),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFF576182),
                              color2: Color(0xFF1FC5AB),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                            MissionCard(
                              mission: Mission(name: 'Plant a Tree!!', xp: 10),
                              color1: Color(0xFFF03A3A),
                              color2: Color(0xFFDFB6A2),
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: BottomSheet1(),
                                          ),
                                        ));
                              },
                            ),
                          ],
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
    );
  }
}
