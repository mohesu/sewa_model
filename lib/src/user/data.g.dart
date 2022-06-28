// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPref _$AdditionalDataFromJson(Map<String, dynamic> json) =>
    UserPref(
      email: json['email'] as String? ?? "",
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      profileImage: json['profileImage'] as String? ?? "",
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.anonymous,
    );

Map<String, dynamic> _$AdditionalDataToJson(UserPref instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'userType': _$UserTypeEnumMap[instance.userType],
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
