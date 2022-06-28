import 'package:flutter/foundation.dart';

enum Gender {
  male,
  female,
  other,
}

extension GenderIndex on Gender {
  operator [](String key) => (name) {
        switch (name) {
          case 'male':
            return Gender.male;
          case 'female':
            return Gender.female;
          case 'other':
            return Gender.other;
          default:
            throw RangeError(
                "enum GenderIndex contains no value '$name'");
        }
      }(key);
}

extension GenderExtension on String {
  Gender toUserAccountStatusEnum() => Gender.values
      .firstWhere((d) => describeEnum(d) == toLowerCase());
}
