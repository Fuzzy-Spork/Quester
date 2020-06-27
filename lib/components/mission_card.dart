import 'package:flutter/material.dart';
import 'package:quester/models/mission/mission.dart';

class MissionCard extends StatefulWidget {
  final Mission mission;
  final Function onTap;
  MissionCard({
    this.mission,
    this.onTap,
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
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
            color: Color(0xFF09144B), borderRadius: BorderRadius.circular(20)),
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
    );
  }
}
