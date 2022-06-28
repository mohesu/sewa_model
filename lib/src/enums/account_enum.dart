import 'package:flutter/foundation.dart';

enum UserAccountStatus {
  active,
  inactive,
}

extension UserAccountStatusIndex on UserAccountStatus {
  operator [](String key) => (name) {
        switch (name) {
          case 'active':
            return UserAccountStatus.active;
          case 'inactive':
            return UserAccountStatus.inactive;
          default:
            throw RangeError(
                "enum UserAccountStatus contains no value '$name'");
        }
      }(key);
}

extension UserAccountStatusExtension on String {
  UserAccountStatus toUserAccountStatusEnum() => UserAccountStatus.values
      .firstWhere((d) => describeEnum(d) == toLowerCase());
}
