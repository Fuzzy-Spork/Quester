// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionReport _$CompletionReportFromJson(Map<String, dynamic> json) {
  return CompletionReport(
    id: json['id'] as String,
    completionDate: json['completionDate'] == null
        ? null
        : DateTime.parse(json['completionDate'] as String),
  );
}

Map<String, dynamic> _$CompletionReportToJson(CompletionReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'completionDate': instance.completionDate?.toIso8601String(),
    };
