// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientResponse _$PatientResponseFromJson(Map<String, dynamic> json) =>
    PatientResponse(
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
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.patient,
      status: $enumDecodeNullable(_$UserAccountStatusEnumMap, json['status']) ??
          UserAccountStatus.active,
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

Map<String, dynamic> _$PatientResponseToJson(PatientResponse instance) =>
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
      'userType': _$UserTypeEnumMap[instance.userType],
      'status': _$UserAccountStatusEnumMap[instance.status],
      r'$id': instance.documentId,
      r'$collection': instance.collectionId,
      r'$read': instance.read,
      r'$write': instance.write,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.manager: 'manager',
  UserType.hospital: 'hospital',
  UserType.lab: 'lab',
  UserType.doctor: 'doctor',
  UserType.patient: 'patient',
  UserType.anonymous: 'anonymous',
};

const _$UserAccountStatusEnumMap = {
  UserAccountStatus.active: 'active',
  UserAccountStatus.inactive: 'inactive',
};
