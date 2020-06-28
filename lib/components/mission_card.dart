import 'package:flutter/material.dart';
import 'package:quester/models/mission/mission.dart';

class MissionCard extends StatefulWidget {
  final Mission mission;
  final Function onTap;
  final Color color1;
  final Color color2;
  MissionCard({
    this.mission,
    this.onTap,
    this.color1,
    this.color2,
  });
  @override
  _MissionCardState createState() => _MissionCardState();
}

class _MissionCardState extends State<MissionCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 110,
          width: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [widget.color1, widget.color2]),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.mission.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.mission.xp.toString() + ' XP',
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
