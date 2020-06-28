
import 'package:flutter/material.dart';
import 'package:quester/models/mission/mission.dart';

import 'bottom_sheet.dart';



class MissionCard extends StatelessWidget {
  final Mission mission;
  MissionCard({this.mission});
  final List<LinearGradient> gradients = [
    LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFF03A3A), Color(0xFFDFB6A2)]),
    LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF576182), Color(0xFF1FC5AB)]),
    LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF23494A), Color(0xFFBFFFC7)]),
    LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFAE0D), Color(0xFFF9E866)]),
    LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF63E5C5), Color(0xFF14366F)]),

  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: GestureDetector(
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
                  child: BottomSheet1(mission: mission,),
                ),
              ));
        },
        child: Container(
          height: 110,
          width: 150,
          decoration: BoxDecoration(
              gradient: (gradients..shuffle()).first,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 mission.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mission.xp.toString() + ' XP',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
