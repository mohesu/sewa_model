import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class SpecialistRequest {
  String name;
  String type;
  String icon;
  String hindiName;
  String description;
  String typeId;

  SpecialistRequest({
    this.name = "",
    this.type = "",
    this.icon = "",
    this.hindiName = "",
    this.description = "",
    this.typeId = "",
  });

  factory SpecialistRequest.fromJson(Map<String, dynamic> json) {
    return _$SpecialistRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialistRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SpecialistRequest) return false;
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
