import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class LabResponse {
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
  List<String> images;
  String timing;
  int createdAt;
  int updatedAt;
  String status;
  String userId;
  double latitude;
  double longitude;
  String description;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  LabResponse({
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
    this.updatedAt = 0,
    this.status = "",
    this.userId = "",
    this.latitude = 0,
    this.longitude = 0,
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
    this.description = "",
  });

  factory LabResponse.fromJson(Map<String, dynamic> json) {
    return _$LabResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LabResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LabResponse) return false;
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
      documentId.hashCode ^
      collectionId.hashCode ^
      read.hashCode ^
      write.hashCode ^
      description.hashCode;
}
