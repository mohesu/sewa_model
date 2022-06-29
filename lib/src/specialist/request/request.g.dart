// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialistRequest _$SpecialistRequestFromJson(Map<String, dynamic> json) =>
    SpecialistRequest(
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      hindiName: json['hindiName'] as String? ?? "",
      description: json['description'] as String? ?? "",
      typeId: json['typeId'] as String? ?? "",
    );

Map<String, dynamic> _$SpecialistRequestToJson(SpecialistRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'hindiName': instance.hindiName,
      'description': instance.description,
      'typeId': instance.typeId,
    };
