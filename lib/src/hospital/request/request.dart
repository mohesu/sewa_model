import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/account_enum.dart';


part 'request.g.dart';

@JsonSerializable()
class HospitalRequest {
  String name;
  String phone;
  String mobile;
  String emergencyPhone;
  String email;
  String address;
  String city;
  String state;
  double rating;
  String owner;
  List<String> specialist;
  String timing;
  int createdAt;
  int updatedAt;
  UserAccountStatus status;
  String userId;
  double latitude;
  double longitude;
  String description;
  double fees;
  int freePeriod;
  List<String> services;
  List<String> images;

  HospitalRequest({
    this.name = "",
    this.phone = "",
    this.mobile = "",
    this.emergencyPhone = "",
    this.email = "",
    this.address = "",
    this.city = "",
    this.state = "",
    this.rating = 1.0,
    this.owner = "",
    this.specialist = const [],
    this.timing = "",
    this.createdAt = 0,
    this.updatedAt = 0,
    this.status = UserAccountStatus.active,
    this.userId = "",
    this.latitude = 0,
    this.longitude = 0,
    this.description = "",
    this.fees = 0,
    this.freePeriod = 0,
    this.services = const [],
    this.images = const [],
  });

  factory HospitalRequest.fromJson(Map<String, dynamic> json) {
    return _$HospitalRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HospitalRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! HospitalRequest) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      phone.hashCode ^
      mobile.hashCode ^
      emergencyPhone.hashCode ^
      email.hashCode ^
      address.hashCode ^
      city.hashCode ^
      state.hashCode ^
      rating.hashCode ^
      owner.hashCode ^
      specialist.hashCode ^
      timing.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      userId.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      fees.hashCode ^
      services.hashCode ^
      freePeriod.hashCode ^
      description.hashCode;
}
