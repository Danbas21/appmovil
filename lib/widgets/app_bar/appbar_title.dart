import 'package:flutter/material.dart';
import 'package:school_management_system/theme/custom_text_style.dart';
import 'package:school_management_system/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
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
              CustomTextStyles.titleMediumPlusJakartaDisplayOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
