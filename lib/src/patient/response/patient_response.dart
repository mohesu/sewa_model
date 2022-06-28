import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/account_enum.dart';
import '../../enums/gender.dart';
import '../../enums/user_type.dart';


part 'patient_response.g.dart';

@JsonSerializable()
class PatientResponse {
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
  UserType userType;
  UserAccountStatus status;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  PatientResponse({
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
    this.userType = UserType.patient,
    this.status = UserAccountStatus.active,
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
  });

  factory PatientResponse.fromJson(Map<String, dynamic> json) {
    return _$PatientResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PatientResponse) return false;
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
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      image.hashCode ^
      userType.hashCode ^
      documentId.hashCode ^
      collectionId.hashCode ^
      read.hashCode ^
      write.hashCode;
}
