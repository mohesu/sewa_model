// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabTestPriceResponse _$LabTestPriceResponseFromJson(
        Map<String, dynamic> json) =>
    LabTestPriceResponse(
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      price: json['price'] as String? ?? "",
      labId: json['labId'] as String? ?? "",
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

Map<String, dynamic> _$LabTestPriceResponseToJson(
        LabTestPriceResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'labId': instance.labId,
      'typeId': instance.typeId,
      r'$id': instance.documentId,
      r'$collection': instance.collectionId,
      r'$read': instance.read,
      r'$write': instance.write,
    };
