// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalRequest _$HospitalRequestFromJson(Map<String, dynamic> json) =>
    HospitalRequest(
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      mobile: json['mobile'] as String? ?? "",
      emergencyPhone: json['emergencyPhone'] as String? ?? "",
      email: json['email'] as String? ?? "",
      address: json['address'] as String? ?? "",
      city: json['city'] as String? ?? "",
      state: json['state'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 1.0,
      owner: json['owner'] as String? ?? "",
      specialist: (json['specialist'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      timing: json['timing'] as String? ?? "",
      createdAt: json['createdAt'] as int? ?? 0,
      updatedAt: json['updatedAt'] as int? ?? 0,
      status: $enumDecodeNullable(_$UserAccountStatusEnumMap, json['status']) ??
          UserAccountStatus.active,
      userId: json['userId'] as String? ?? "",
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      description: json['description'] as String? ?? "",
      fees: (json['fees'] as num?)?.toDouble() ?? 0,
      freePeriod: json['freePeriod'] as int? ?? 0,
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HospitalRequestToJson(HospitalRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'emergencyPhone': instance.emergencyPhone,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'rating': instance.rating,
      'owner': instance.owner,
      'specialist': instance.specialist,
      'timing': instance.timing,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': _$UserAccountStatusEnumMap[instance.status],
      'userId': instance.userId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'fees': instance.fees,
      'freePeriod': instance.freePeriod,
      'services': instance.services,
      'images': instance.images,
    };

const _$UserAccountStatusEnumMap = {
  UserAccountStatus.active: 'active',
  UserAccountStatus.inactive: 'inactive',
};
