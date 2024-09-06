import 'package:flutter/material.dart';
import 'package:school_management_system/theme/app_decoration.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTrailingImageOne extends StatelessWidget {
  AppbarTrailingImageOne({
    super.key,
    this.imagePath,
    this.margin,
    this.onTap,
  });

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder10,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 20,
          width: 12,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            8,
          ),
        ),
      ),
    );
  }
}
