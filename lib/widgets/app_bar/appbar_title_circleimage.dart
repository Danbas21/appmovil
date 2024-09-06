import 'package:flutter/material.dart';
import 'package:school_management_system/core/utils/size_utils.dart';
import 'package:school_management_system/theme/app_decoration.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTitleCircleimage extends StatelessWidget {
  AppbarTitleCircleimage({
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
      borderRadius: BorderRadiusStyle.roundedBorder25,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 48.adaptSize,
          width: 48.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            24,
          ),
        ),
      ),
    );
  }
}
