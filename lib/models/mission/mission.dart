import 'package:json_annotation/json_annotation.dart';

part 'mission.g.dart';

enum Status {
  @JsonValue('Inactive')
  Inactive,
  @JsonValue('Completed')
  Completed,
  @JsonValue('InProgress')
  InProgress,
  @JsonValue('Expired')
  Expired,
  @JsonValue('UnderReview')
  UnderReview,
}

enum Category {
  @JsonValue('Repeatable')
  Repeatable,
  @JsonValue('Active')
  Active,
  @JsonValue('Completed')
  Completed
}

@JsonSerializable()
class Mission {
  String name;
  String desc;
  int xp;
  Category category;
  Status status;

  Mission({this.desc, this.name, this.xp, this.category, this.status});

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
  Map<String, dynamic> toJson() => _$MissionToJson(this);
}
