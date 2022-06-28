// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabRequest _$LabRequestFromJson(Map<String, dynamic> json) => LabRequest(
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      mobile: json['mobile'] as String? ?? "",
      email: json['email'] as String? ?? "",
      address: json['address'] as String? ?? "",
      city: json['city'] as String? ?? "",
      state: json['state'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 1.0,
      owner: json['owner'] as String? ?? "",
      homeService: json['homeService'] as String? ?? "",
      specialist: (json['specialist'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      images: (json['images'] as List<dynamic>?)
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
    );

Map<String, dynamic> _$LabRequestToJson(LabRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'rating': instance.rating,
      'owner': instance.owner,
      'homeService': instance.homeService,
      'specialist': instance.specialist,
      'timing': instance.timing,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': _$UserAccountStatusEnumMap[instance.status],
      'userId': instance.userId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'images': instance.images,
    };

const _$UserAccountStatusEnumMap = {
  UserAccountStatus.active: 'active',
  UserAccountStatus.inactive: 'inactive',
};
