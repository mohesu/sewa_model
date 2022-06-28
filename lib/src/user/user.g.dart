// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SewaUser _$UserFromJson(Map<String, dynamic> json) => SewaUser(
      id: json[r'$id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      registration: json['registration'] as int? ?? 0,
      status: json['status'] as bool? ?? false,
      passwordUpdate: json['passwordUpdate'] as int? ?? 0,
      email: json['email'] as String? ?? '',
      emailVerification: json['emailVerification'] as bool? ?? false,
      prefs: json['prefs'] == null
          ? null
          : Prefs.fromJson(json['prefs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(SewaUser instance) => <String, dynamic>{
      r'$id': instance.id,
      'name': instance.name,
      'registration': instance.registration,
      'status': instance.status,
      'passwordUpdate': instance.passwordUpdate,
      'email': instance.email,
      'emailVerification': instance.emailVerification,
      'prefs': instance.prefs,
    };
