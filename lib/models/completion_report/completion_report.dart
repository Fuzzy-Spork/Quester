import 'package:json_annotation/json_annotation.dart';

part 'completion_report.g.dart';

@JsonSerializable()
class CompletionReport {
  String id;
  DateTime completionDate;
  CompletionReport({
    this.id,
    this.completionDate,
  });

  factory CompletionReport.fromJson(Map<String, dynamic> json) =>
      _$CompletionReportFromJson(json);
  Map<String, dynamic> toJson() => _$CompletionReportToJson(this);
}
