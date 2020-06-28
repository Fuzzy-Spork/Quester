// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return Mission(
    id: json['id'] as String,
    desc: json['desc'] as String,
    name: json['name'] as String,
    xp: json['xp'] as int,
    category: _$enumDecodeNullable(_$CategoryEnumMap, json['category']),
    status: _$enumDecodeNullable(_$StatusEnumMap, json['status']),
    completionReport: json['completionReport'] == null
        ? null
        : CompletionReport.fromJson(
            json['completionReport'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'xp': instance.xp,
      'category': _$CategoryEnumMap[instance.category],
      'status': _$StatusEnumMap[instance.status],
      'completionReport': instance.completionReport?.toJson(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CategoryEnumMap = {
  Category.Repeatable: 'Repeatable',
  Category.Active: 'Active',
};

const _$StatusEnumMap = {
  Status.Inactive: 'Inactive',
  Status.Completed: 'Completed',
  Status.InProgress: 'InProgress',
  Status.Expired: 'Expired',
  Status.UnderReview: 'UnderReview',
};
