// make user type enum
import 'package:flutter/foundation.dart';

enum UserType {
  admin,
  manager,
  hospital,
  lab,
  doctor,
  patient,
  anonymous,
}

extension UserTypeIndex on UserType {
  operator [](String key) => (name) {
        switch (name) {
          case 'admin':
            return UserType.admin;
          case 'manager':
            return UserType.manager;
          case 'hospital':
            return UserType.hospital;
          case 'lab':
            return UserType.lab;
          case 'doctor':
            return UserType.doctor;
          case 'patient':
            return UserType.patient;
          case 'anonymous':
            return UserType.anonymous;
          default:
            throw RangeError("enum UserType contains no value '$name'");
        }
      }(key);
}

extension UserTypeExtension on String {
  UserType toEnum() =>
      UserType.values.firstWhere((d) => describeEnum(d) == toLowerCase());
}
