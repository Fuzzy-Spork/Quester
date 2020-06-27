import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  int level;
  int xpToNextLevel;
  int totalXP;
  User({this.name, this.level, this.totalXP, this.xpToNextLevel});

  factory User.createByName(name) => User(
        name: name,
      );
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  int getLevel(context) {
    if (this.level != this.totalXP % 50 - 1) {
      levelUp(context);
    }
    return this.totalXP % 50 - 1;
  }

  void levelUp(context) {
    this.level++;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Congragulations!!! Level Up!"),
          content: new Text("You are now Level ${this.level}."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
