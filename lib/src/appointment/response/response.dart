import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/appointment_enum.dart';
import '../../enums/gender.dart';


part 'response.g.dart';

@JsonSerializable()
class AppointmentResponse {
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
  AppointmentStatus status;
  String disease;
  String appointedId;
  String appointedName;
  String doctorId;
  String doctorName;
  int requestedDateTime;
  int confirmedDateTime;
  String assignedNumber;
  String remarkByPatient;
  String remarkByDoctor;
  String paymentStatus;
  double paymentAmount;
  int paymentDateTime;
  double rating;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  AppointmentResponse({
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
    this.status = AppointmentStatus.pending,
    this.disease = "",
    this.appointedId = "",
    this.appointedName = "",
    this.doctorId = "",
    this.doctorName = "",
    this.requestedDateTime = 0,
    this.confirmedDateTime = 0,
    this.remarkByPatient = "",
    this.remarkByDoctor = "",
    this.paymentStatus = "",
    this.paymentAmount = 0,
    this.paymentDateTime = 0,
    this.rating = 1.0,
    this.assignedNumber = "",
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
  });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) {
    return _$AppointmentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AppointmentResponse) return false;
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
      disease.hashCode ^
      appointedId.hashCode ^
      appointedName.hashCode ^
      doctorId.hashCode ^
      doctorName.hashCode ^
      requestedDateTime.hashCode ^
      confirmedDateTime.hashCode ^
      assignedNumber.hashCode ^
      remarkByPatient.hashCode ^
      remarkByDoctor.hashCode ^
      paymentStatus.hashCode ^
      paymentAmount.hashCode ^
      paymentDateTime.hashCode ^
      rating.hashCode ^
      documentId.hashCode ^
      collectionId.hashCode ^
      read.hashCode ^
      write.hashCode;
}
