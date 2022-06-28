import 'package:json_annotation/json_annotation.dart';

import '../enums/user_type.dart';


part 'data.g.dart';

@JsonSerializable()
class UserPref {
  String email;
  String name;
  String phone;
  String profileImage;
  UserType userType;

  UserPref({
    this.email = "",
    this.name = "",
    this.phone = "",
    this.profileImage = "",
    this.userType = UserType.anonymous,
  });

  @override
  String toString() {
    return 'Data(email: $email, name: $name, phone: $phone, profileImage: $profileImage, userType: $userType)';
  }

  factory UserPref.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalDataToJson(this);

  UserPref copyWith({
    String? email,
    String? name,
    String? phone,
    String? profileImage,
    UserType? userType,
  }) {
    return UserPref(
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      profileImage: profileImage ?? this.profileImage,
      userType: userType ?? this.userType,
    );
  }
}
