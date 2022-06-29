import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class LabTestPriceResponse {
  String name;
  String type;
  String price;
  String labId;
  String typeId;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  LabTestPriceResponse({
    this.name = "",
    this.type = "",
    this.price = "",
    this.labId = "",
    this.typeId = "",
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
  });

  factory LabTestPriceResponse.fromJson(Map<String, dynamic> json) {
    return _$LabTestPriceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LabTestPriceResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LabTestPriceResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      type.hashCode ^
      price.hashCode ^
      typeId.hashCode ^
      type.hashCode;
}
