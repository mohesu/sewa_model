import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class SpecialistResponse {
  String name;
  String type;
  String icon;
  String hindiName;
  String description;
  String typeId;
  @JsonKey(name: '\$id')
  String documentId;
  @JsonKey(name: '\$collection')
  String collectionId;
  @JsonKey(name: '\$read')
  List<String> read;
  @JsonKey(name: '\$write')
  List<String> write;

  SpecialistResponse({
    this.name = "",
    this.type = "",
    this.icon = "",
    this.hindiName = "",
    this.description = "",
    this.typeId = "",
    this.documentId = "",
    this.collectionId = "",
    this.read = const [],
    this.write = const [],
  });

  factory SpecialistResponse.fromJson(Map<String, dynamic> json) {
    return _$SpecialistResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialistResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SpecialistResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      type.hashCode ^
      icon.hashCode ^
      hindiName.hashCode ^
      description.hashCode;
}
