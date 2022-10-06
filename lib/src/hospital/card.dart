import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:sewa_model/sewa_model.dart';
import 'package:utils_widget/utils_widget.dart';

class HospitalCard extends StatelessWidget {
  final HospitalResponse hospital;
  final void Function()? onTap;
  final void Function()? onMoreTap;
  final int index;
  final Widget? image;
  const HospitalCard({
    Key? key,
    required this.hospital,
    this.onTap,
    required this.index,
    this.onMoreTap,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      colorCenter: cardColor(context),
      title: hospital.name.toTitleCase(),
      subTitle: hospital.city.toTitleCase(),
      colorLeft: primary(context),
      colorRight: toggleableActiveColor(context),
      iconLeft: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: (hospital.images.isNotEmpty)
                ? image ??
                    Text(
                      hospital.name.toInitials().toUpperCase(),
                      textScaleFactor: 1.8,
                      style: TextStyle(
                        letterSpacing: 2,
                        color: onPrimary(context),
                      ),
                    )
                : Text(
                    hospital.name.toInitials().toUpperCase(),
                    textScaleFactor: 1.8,
                    style: TextStyle(
                      letterSpacing: 2,
                      color: onPrimary(context),
                    ),
                  ),
          ),
          GlassContainer(
            width: double.infinity,
            borderRadius: BorderRadius.zero,
            child: Text(
              "Hospital",
              style: TextStyle(
                color: onPrimary(context),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      iconRight: Icon(
        Icons.more_vert_rounded,
        color: onPrimary(context),
      ),
      onMoreTap: onMoreTap,
      index: index,
      onTap: onTap,
    );
  }
}
