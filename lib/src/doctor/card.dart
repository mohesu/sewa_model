import 'package:flutter/material.dart';
import 'package:sewa_model/sewa_model.dart';
import 'package:utils_widget/utils_widget.dart';

class DoctorCard extends StatelessWidget {
  final DoctorResponse doctor;
  final Function()? onTap;
  final Function()? onLongPress;
  final int index;
  final Widget? image;
  const DoctorCard({
    Key? key,
    required this.doctor,
    this.onTap,
    required this.index,
    this.onLongPress,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      child: Row(
        children: [
          CustomContainer(
            margin: const EdgeInsets.only(left: 8),
            radius: 160,
            height: 70,
            width: 70,
            alignment: Alignment.center,
            blurRadius: 1,
            child: (doctor.image.isNotEmpty)
                ? image ??
                    Text(
                      doctor.name.toInitials().toUpperCase(),
                      textScaleFactor: 1.5,
                    )
                : Text(
                    doctor.name.toInitials().toUpperCase(),
                    textScaleFactor: 1.5,
                  ),
          ),
          Expanded(
            child: ListTile(
              isThreeLine: true,
              onTap: onTap,
              onLongPress: onLongPress,
              key: key,
              title: Text(
                "Dr. ${doctor.name}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text((doctor.qualification.isNotEmpty)
                      ? doctor.qualification.toUpperCase()
                      : doctor.city.toCapitalized()),
                  Text((doctor.status.name)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
