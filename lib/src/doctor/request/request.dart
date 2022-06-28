import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/doctor_enum.dart';


part 'request.g.dart';

@JsonSerializable()
class DoctorRequest {
  String name;
  String image;
  String phone;
  String mobile;
  String email;
  String address;
  String city;
  String state;
  double rating;
  List<String> specialities;
  String qualification;
  int createdAt;
  int updatedAt;
  DoctorStatus status;
  String userId;
  String description;
  List<String> linkedWith;

  DoctorRequest({
    this.name = "",
    this.image = "",
    this.phone = "",
    this.mobile = "",
    this.email = "",
    this.address = "",
    this.city = "",
    this.state = "",
    this.rating = 1.0,
    this.specialities = const [],
    this.qualification = "",
    this.createdAt = 0,
    this.updatedAt = 0,
    this.status = DoctorStatus.active,
    this.userId = "",
    this.description = "",
    this.linkedWith = const [],
  });

  factory DoctorRequest.fromJson(Map<String, dynamic> json) {
    return _$DoctorRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoctorRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! DoctorRequest) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      phone.hashCode ^
      mobile.hashCode ^
      email.hashCode ^
      address.hashCode ^
      city.hashCode ^
      state.hashCode ^
      rating.hashCode ^
      image.hashCode ^
      specialities.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      userId.hashCode ^
      qualification.hashCode ^
      linkedWith.hashCode ^
      description.hashCode;
}
