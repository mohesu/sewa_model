import 'package:json_annotation/json_annotation.dart';

import 'prefs.dart';

part 'user.g.dart';

@JsonSerializable()
class SewaUser {
  @JsonKey(name: '\$id')
  String id;
  String name;
  int registration;
  bool status;
  int passwordUpdate;
  String email;
  bool emailVerification;
  Prefs? prefs;

  SewaUser({
    this.id = '',
    this.name = '',
    this.registration = 0,
    this.status = false,
    this.passwordUpdate = 0,
    this.email = '',
    this.emailVerification = false,
    this.prefs,
  });

  factory SewaUser.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
