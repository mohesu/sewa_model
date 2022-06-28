import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/account_enum.dart';
import '../../enums/gender.dart';



part 'patient_request.g.dart';

@JsonSerializable()
class PatientRequest {
  String name;
  String phone;
  String address;
  String email;
  int dateOfBirth;
  Gender? gender;
  double height;
  double weight;
  String userId;
  int createdAt;
  int updatedAt;
  String image;
  UserAccountStatus status;

  PatientRequest({
    this.name = "",
    this.phone = "",
    this.address = "",
    this.email = "",
    this.dateOfBirth = 0,
    this.gender,
    this.height = 0,
    this.weight = 0,
    this.userId = "",
    this.createdAt = 0,
    this.updatedAt = 0,
    this.image = "",
    this.status = UserAccountStatus.active,
  });

  factory PatientRequest.fromJson(Map<String, dynamic> json) {
    return _$PatientRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PatientRequest) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      email.hashCode ^
      dateOfBirth.hashCode ^
      gender.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      userId.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      image.hashCode ^
      status.hashCode;
}
