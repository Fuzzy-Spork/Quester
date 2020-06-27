import 'package:flutter/material.dart';
import 'package:quester/models/mission/mission.dart';

class MissionCard extends StatefulWidget {
  final Mission mission;
  MissionCard({this.mission});
  @override
  _MissionCardState createState() => _MissionCardState();
}

class _MissionCardState extends State<MissionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(widget.mission.name),
        ),
      ),
    );
  }
}
