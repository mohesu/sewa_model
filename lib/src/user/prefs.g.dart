// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prefs _$PrefsFromJson(Map<String, dynamic> json) => Prefs(
      data: json['data'] == null
          ? null
          : UserPref.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrefsToJson(Prefs instance) => <String, dynamic>{
      'data': instance.data,
    };
