// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorResponse _$DoctorResponseFromJson(Map<String, dynamic> json) =>
    DoctorResponse(
      name: json['name'] as String? ?? "",
      image: json['image'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      mobile: json['mobile'] as String? ?? "",
      email: json['email'] as String? ?? "",
      address: json['address'] as String? ?? "",
      state: json['state'] as String? ?? "",
      city: json['city'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 1.0,
      specialities: (json['specialities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      qualification: json['qualification'] as String? ?? "",
      createdAt: json['createdAt'] as int? ?? 0,
      updatedAt: json['updatedAt'] as int? ?? 0,
      status: $enumDecodeNullable(_$DoctorStatusEnumMap, json['status']) ??
          DoctorStatus.active,
      userId: json['userId'] as String? ?? "",
      description: json['description'] as String? ?? "",
      linkedWith: (json['linkedWith'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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

Map<String, dynamic> _$DoctorResponseToJson(DoctorResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'rating': instance.rating,
      'specialities': instance.specialities,
      'qualification': instance.qualification,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'status': _$DoctorStatusEnumMap[instance.status],
      'userId': instance.userId,
      'description': instance.description,
      'linkedWith': instance.linkedWith,
      r'$id': instance.documentId,
      r'$collection': instance.collectionId,
      r'$read': instance.read,
      r'$write': instance.write,
    };

const _$DoctorStatusEnumMap = {
  DoctorStatus.active: 'active',
  DoctorStatus.inactive: 'inactive',
  DoctorStatus.onLeave: 'onLeave',
  DoctorStatus.onEmergency: 'onEmergency',
};
