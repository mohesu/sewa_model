// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabTestPriceRequest _$LabTestPriceRequestFromJson(Map<String, dynamic> json) =>
    LabTestPriceRequest(
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      price: json['price'] as String? ?? "",
      labId: json['labId'] as String? ?? "",
      typeId: json['typeId'] as String? ?? "",
    );

Map<String, dynamic> _$LabTestPriceRequestToJson(
        LabTestPriceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'labId': instance.labId,
      'typeId': instance.typeId,
    };
