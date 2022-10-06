import 'package:flutter/material.dart';
import 'package:sewa_model/sewa_model.dart';
import 'package:utils_widget/utils_widget.dart';

class AppointmentCard extends StatelessWidget {
  final AppointmentResponse appointment;
  final int index;
  final void Function()? onTap;
  final void Function()? onShare;
  final Widget shareIcon;
  const AppointmentCard({
    Key? key,
    required this.appointment,
    required this.index,
    this.onTap,
    this.onShare,
    this.shareIcon = const Icon(Icons.share),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 95,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(appointment.confirmedDateTime
                      .toString()
                      .toDateTime(format: "hh:mm aaa")),
                  ordinalWidget(
                    appointment.confirmedDateTime
                        .toString()
                        .toDateTime(format: "d"),
                    context,
                  ),
                  Text(appointment.confirmedDateTime
                      .toString()
                      .toDateTime(format: "MMMM")),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 1,
              height: 90,
              color: Colors.grey,
            ),
            Expanded(
              child: Column(
                children: [
                  trailingRow(
                    appointment.appointedName.toCapitalized(),
                    trailing: IconButton(
                      color: Colors.grey,
                      onPressed: onShare,
                      icon: shareIcon,
                    ),
                  ),
                  trailingRow(
                    appointment.name.toCapitalized(),
                    canBold: true,
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        (appointment.paymentAmount != 0)
                            ? appointment.paymentAmount.toString()
                            : "Not Paid",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  trailingRow(
                    "Dr. ${appointment.doctorName.toCapitalized()}",
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        backgroundColor: appointment.status
                            .toAppointmentStatusColor(context)
                            .withOpacity(0.5),
                        label: Text(
                          appointment.status.name.toUpperCase(),
                          textScaleFactor: 0.7,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget trailingRow(String title,
    {String? subTitle, Widget? trailing, bool canBold = false}) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: canBold ? FontWeight.bold : null,
                  overflow: TextOverflow.fade,
                ),
                softWrap: false,
                maxLines: 1,
              ),
              if (subTitle != null) Text(subTitle),
            ],
          ),
        ),
      ),
      if (trailing != null) trailing,
    ],
  );
}

Widget ordinalWidget(String number, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        number,
        style: TextStyle(fontWeight: FontWeight.w900, color: primary(context)),
        textScaleFactor: 2,
      ),
      const SizedBox(width: 1),
      Text(
        number.toOrdinal(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 0.8,
      ),
    ],
  );
}

extension StringExtension on String {
  String toOrdinal() {
    switch (this) {
      case "1":
        return "st";
      case "2":
        return "nd";
      case "3":
        return "rd";
      default:
        return "th";
    }
  }
}
