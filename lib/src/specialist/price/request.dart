import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class LabTestPriceRequest {
  String name;
  String type;
  String price;
  String labId;
  String typeId;

  LabTestPriceRequest({
    this.name = "",
    this.type = "",
    this.price = "",
    this.labId = "",
    this.typeId = "",
  });

  factory LabTestPriceRequest.fromJson(Map<String, dynamic> json) {
    return _$LabTestPriceRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LabTestPriceRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LabTestPriceRequest) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^ type.hashCode ^ price.hashCode ^ labId.hashCode;
}
