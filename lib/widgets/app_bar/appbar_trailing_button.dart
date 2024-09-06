import 'package:flutter/material.dart';
import 'package:school_management_system/theme/custom_button_style.dart';
import 'package:school_management_system/theme/custom_text_style.dart';
import 'package:school_management_system/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    super.key,
    this.margin,
    this.onTap,
  });

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
        child: CustomElevatedButton(
          height: 28,
          width: 86,
          text: "lbl_done",
          buttonStyle: CustomButtonStyles.fillWhiteA,
          buttonTextStyle: CustomTextStyles.labelLargeSourceSansProIndigo30002,
        ),
      ),
    );
  }
}
