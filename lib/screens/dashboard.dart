import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quester/components/mission_card.dart';
import 'package:quester/models/mission/mission.dart';
import 'package:quester/models/mission/missions.dart';
import 'package:quester/models/user/user.dart';

class DashBoard extends StatefulWidget {
  final User user;
  DashBoard({this.user});
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    widget.user.getLevel(context);
    //var height = 10.0;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF09144B),
        body: Column(
          children: [
            Container(
              height: size.height * 0.25,
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
                  //Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
                          widget.user.name.toUpperCase(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
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
                        padding: const EdgeInsets.only(left: 20),
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
                          widget.user.level.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 10, left: 20),
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
                        padding: const EdgeInsets.only(left: 0, right: 50),
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white,
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 13.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            onChanged: (x) {},
                            value: widget.user.totalXP.toDouble(),
                            min: 0,
                            max: 100.0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
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
                            padding: const EdgeInsets.only(right: 70),
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
                      )
                    ],
                  ),
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
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        controller: _controller,
                        tabs: <Widget>[
                          Tab(
                            text: 'Active',
                          ),
                          Tab(text: 'Daily'),
                          Tab(text: 'Completed')
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.6,
                      child: new TabBarView(
                        controller: _controller,
                        children: <Widget>[
                          ListView(
                            children: getActive(),
                          ),
                          ListView(
                            children: getDaily(),
                          ),
                          ListView(
                            children: getDaily(),
                          ),
                        ],
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

  List<Widget> getActive() {
    List<Widget> lists = [];
    for (var mission in missions) {
      if (mission.category == Category.Active) {
        lists.add(MissionCard(
          mission: mission,
        ));
      }
    }
    return lists;
  }

  List<Widget> getDaily() {
    List<Widget> lists = [];
    for (var mission in missions) {
      if (mission.category == Category.Repeatable) {
        lists.add(MissionCard(
          mission: mission,
        ));
      }
    }
    return lists;
  }

  List<Widget> getCompleted() {
    List<Widget> lists = [];
    for (var mission in missions) {
      if (mission.status == Status.Completed) {
        lists.add(MissionCard(
          mission: mission,
        ));
      }
    }
    return lists;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
