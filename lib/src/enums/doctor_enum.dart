import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


enum DoctorStatus {
  active,
  inactive,
  onLeave,
  onEmergency,
}

extension DoctorStatusIndex on DoctorStatus {
  Color toAppointmentStatusColor(BuildContext context) {
    switch (name) {
      case 'onLeave':
        return Colors.orange;
      case 'active':
        return Colors.green;
      case 'inactive':
        return Colors.red;
      case 'onEmergency':
        return Theme.of(context).colorScheme.secondary;
      default:
        throw RangeError("enum AppointmentStatus contains no value '$name'");
    }
  }
}

extension DoctorExtension on String {
  DoctorStatus toAppointmentStatusEnum() =>
      DoctorStatus.values.firstWhere((d) => describeEnum(d) == toLowerCase());
}
