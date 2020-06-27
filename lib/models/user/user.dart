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

  // void levelUp(User user) {
  //   user.level++;
  // }
}
