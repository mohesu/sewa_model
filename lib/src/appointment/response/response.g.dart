// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) =>
    AppointmentResponse(
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
      status: $enumDecodeNullable(_$AppointmentStatusEnumMap, json['status']) ??
          AppointmentStatus.pending,
      disease: json['disease'] as String? ?? "",
      appointedId: json['appointedId'] as String? ?? "",
      appointedName: json['appointedName'] as String? ?? "",
      doctorId: json['doctorId'] as String? ?? "",
      doctorName: json['doctorName'] as String? ?? "",
      requestedDateTime: json['requestedDateTime'] as int? ?? 0,
      confirmedDateTime: json['confirmedDateTime'] as int? ?? 0,
      remarkByPatient: json['remarkByPatient'] as String? ?? "",
      remarkByDoctor: json['remarkByDoctor'] as String? ?? "",
      paymentStatus: json['paymentStatus'] as String? ?? "",
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      paymentDateTime: json['paymentDateTime'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 1.0,
      assignedNumber: json['assignedNumber'] as String? ?? "",
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

Map<String, dynamic> _$AppointmentResponseToJson(
        AppointmentResponse instance) =>
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
      'status': _$AppointmentStatusEnumMap[instance.status],
      'disease': instance.disease,
      'appointedId': instance.appointedId,
      'appointedName': instance.appointedName,
      'doctorId': instance.doctorId,
      'doctorName': instance.doctorName,
      'requestedDateTime': instance.requestedDateTime,
      'confirmedDateTime': instance.confirmedDateTime,
      'assignedNumber': instance.assignedNumber,
      'remarkByPatient': instance.remarkByPatient,
      'remarkByDoctor': instance.remarkByDoctor,
      'paymentStatus': instance.paymentStatus,
      'paymentAmount': instance.paymentAmount,
      'paymentDateTime': instance.paymentDateTime,
      'rating': instance.rating,
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

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.confirmed: 'confirmed',
  AppointmentStatus.cancelled: 'cancelled',
  AppointmentStatus.completed: 'completed',
};
