import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/doctor_enum.dart';


part 'response.g.dart';

@JsonSerializable()
class DoctorResponse {
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
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  DoctorResponse({
    this.name = "",
    this.image = "",
    this.phone = "",
    this.mobile = "",
    this.email = "",
    this.address = "",
    this.state = "",
    this.city = "",
    this.rating = 1.0,
    this.specialities = const [],
    this.qualification = "",
    this.createdAt = 0,
    this.updatedAt = 0,
    this.status = DoctorStatus.active,
    this.userId = "",
    this.description = "",
    this.linkedWith = const [],
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
  });

  factory DoctorResponse.fromJson(Map<String, dynamic> json) {
    return _$DoctorResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoctorResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! DoctorResponse) return false;
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
      state.hashCode ^
      city.hashCode ^
      rating.hashCode ^
      qualification.hashCode ^
      specialities.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      userId.hashCode ^
      image.hashCode ^
      linkedWith.hashCode ^
      documentId.hashCode ^
      collectionId.hashCode ^
      read.hashCode ^
      write.hashCode ^
      description.hashCode;
}
