import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quester/screens/bottom_sheet.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    int height = 50;
    Size size = MediaQuery.of(context).size;
    double cHeight = size.height * 0.2;
    Color cColor = Color(0xFF09144B);
    Color textColor = Colors.white;
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
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 0.0,
                          max: 100.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
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
                        height: cHeight,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
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
                                              child: BottomSheet1()),
                                        ));
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
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
                        height: cHeight,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MissionCard(
                              cHeight: cHeight,
                              size: size,
                              cColor: cColor,
                              textColor: textColor,
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

class MissionCard extends StatelessWidget {
  const MissionCard(
      {Key key,
      @required this.cHeight,
      @required this.size,
      @required this.cColor,
      @required this.textColor,
      this.onTap})
      : super(key: key);

  final double cHeight;
  final Size size;
  final Color cColor;
  final Color textColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: cHeight,
        width: size.height * 0.25,
        decoration: BoxDecoration(
            color: cColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                'Plant a tree!',
                style: TextStyle(
                  color: textColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                    size: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
