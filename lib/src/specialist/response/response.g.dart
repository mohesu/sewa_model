// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialistResponse _$SpecialistResponseFromJson(Map<String, dynamic> json) =>
    SpecialistResponse(
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      hindiName: json['hindiName'] as String? ?? "",
      description: json['description'] as String? ?? "",
      typeId: json['typeId'] as String? ?? "",
      documentId: json[r'$id'] as String? ?? "",
      collectionId: json[r'$collection'] as String? ?? "",
      read: (json[r'$read'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      write: (json[r'$write'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SpecialistResponseToJson(SpecialistResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'hindiName': instance.hindiName,
      'description': instance.description,
      'typeId': instance.typeId,
      r'$id': instance.documentId,
      r'$collection': instance.collectionId,
      r'$read': instance.read,
      r'$write': instance.write,
    };
