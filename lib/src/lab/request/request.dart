import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/account_enum.dart';


part 'request.g.dart';

@JsonSerializable()
class LabRequest {
  String name;
  String phone;
  String mobile;
  String email;
  String address;
  String city;
  String state;
  double rating;
  String owner;
  String homeService;
  List<String> specialist;
  String timing;
  int createdAt;
  int updatedAt;
  UserAccountStatus status;
  String userId;
  double latitude;
  double longitude;
  String description;
  List<String> images;

  LabRequest({
    this.name = "",
    this.phone = "",
    this.mobile = "",
    this.email = "",
    this.address = "",
    this.city = "",
    this.state = "",
    this.rating = 1.0,
    this.owner = "",
    this.homeService = "",
    this.specialist = const [],
    this.images = const [],
    this.timing = "",
    this.createdAt = 0,
    this.updatedAt =0,
    this.status = UserAccountStatus.active,
    this.userId = "",
    this.latitude = 0,
    this.longitude = 0,
    this.description = "",
  });

  factory LabRequest.fromJson(Map<String, dynamic> json) {
    return _$LabRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LabRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LabRequest) return false;
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
      owner.hashCode ^
      specialist.hashCode ^
      timing.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      userId.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      description.hashCode;
}
