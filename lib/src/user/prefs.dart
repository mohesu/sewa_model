import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'prefs.g.dart';

@JsonSerializable()
class Prefs {
  @JsonKey(name: 'data')
  UserPref? data;

  Prefs({this.data});

  @override
  String toString() => 'Prefs(data: $data)';

  factory Prefs.fromJson(Map<String, dynamic> json) => _$PrefsFromJson(json);

  Map<String, dynamic> toJson() => _$PrefsToJson(this);

  Prefs copyWith({
    UserPref? data,
  }) {
    return Prefs(
      data: data ?? this.data,
    );
  }
}
