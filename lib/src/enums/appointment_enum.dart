import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


enum AppointmentStatus {
  pending,
  confirmed,
  cancelled,
  completed,
}

extension AppointmentStatusIndex on AppointmentStatus {
  Color toAppointmentStatusColor(BuildContext context) {
    switch (name) {
      case 'pending':
        return Colors.orange;
      case 'confirmed':
        return Colors.green;
      case 'cancelled':
        return Colors.red;
      case 'completed':
        return Theme.of(context).colorScheme.secondary;
      default:
        throw RangeError("enum AppointmentStatus contains no value '$name'");
    }
  }
}

extension AppointmentStatusExtension on String {
  AppointmentStatus toAppointmentStatusEnum() => AppointmentStatus.values
      .firstWhere((d) => describeEnum(d) == toLowerCase());
}
