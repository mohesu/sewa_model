// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientRequest _$PatientRequestFromJson(Map<String, dynamic> json) =>
    PatientRequest(
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      address: json['address'] as String? ?? "",
      email: json['email'] as String? ?? "",
      dateOfBirth: json['dateOfBirth'] as int? ?? 0,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      height: (json['height'] as num?)?.toDouble() ?? 0,
      weight: (json['weight'] as num?)?.toDouble() ?? 0,
      userId: json['userId'] as String? ?? "",
      createdAt: json['createdAt'] as int? ?? 0,
      updatedAt: json['updatedAt'] as int? ?? 0,
      image: json['image'] as String? ?? "",
      status: $enumDecodeNullable(_$UserAccountStatusEnumMap, json['status']) ??
          UserAccountStatus.active,
    );

Map<String, dynamic> _$PatientRequestToJson(PatientRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'gender': _$GenderEnumMap[instance.gender],
      'height': instance.height,
      'weight': instance.weight,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'image': instance.image,
      'status': _$UserAccountStatusEnumMap[instance.status],
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$UserAccountStatusEnumMap = {
  UserAccountStatus.active: 'active',
  UserAccountStatus.inactive: 'inactive',
};
