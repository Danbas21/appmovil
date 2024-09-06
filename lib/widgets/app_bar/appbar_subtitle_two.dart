import 'package:flutter/material.dart';
import 'package:school_management_system/theme/custom_text_style.dart';
import 'package:school_management_system/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({
    super.key,
    required this.text,
    this.margin,
    this.onTap,
  });

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style:
              CustomTextStyles.bodySmallPlusJakartaDisplayBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
      ),
    );
  }
}
