import 'package:json_annotation/json_annotation.dart';
import 'package:quester/models/completion_report/completion_report.dart';
import 'package:quester/services/storage_service.dart';

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
}

@JsonSerializable()
class Mission {
  String id;
  String name;
  String desc;
  int xp;
  Category category;
  Status status;
  CompletionReport completionReport;

  Mission({
    this.id,
    this.desc,
    this.name,
    this.xp,
    this.category,
    this.status,
    this.completionReport,
  });

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
  Map<String, dynamic> toJson() => _$MissionToJson(this);

  void completeMission(context) async {
    var prefs = await StorageService.getInstance();
    this.completionReport.completionDate = DateTime.now();
    var user = prefs.userInDB;
    if (user != null) {
      this.status = Status.Completed;
      user.totalXP += this.xp;
      prefs.saveUserInDB(user);
    }
  }
}
