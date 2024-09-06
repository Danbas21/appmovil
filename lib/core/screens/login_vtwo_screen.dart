import 'package:flutter/material.dart';
import 'package:school_management_system/core/utils/image_constant.dart';
import 'package:school_management_system/core/utils/navigator_service.dart';
import 'package:school_management_system/core/utils/size_utils.dart';
import 'package:school_management_system/theme/app_decoration.dart';
import 'package:school_management_system/theme/custom_button_style.dart';
import 'package:school_management_system/theme/custom_text_style.dart';
import 'package:school_management_system/theme/theme_helper.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

import '../../widgets/custom_elevated_button.dart';

class LoginVtwoScreen extends StatefulWidget {
  const LoginVtwoScreen({super.key});

  @override
  LoginVtwoScreenState createState() => LoginVtwoScreenState();
}

class LoginVtwoScreenState extends State<LoginVtwoScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration:
                                      AppDecoration.gradientBlueToPrimary,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 215.v),
                                        Container(
                                            height: 597.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: appTheme.whiteA700,
                                                borderRadius: const BorderRadius
                                                    .vertical(
                                                    top: Radius.circular(40))))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, top: 79, right: 23),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup8037,
                                            height: 161.v,
                                            width: 321.h),
                                        SizedBox(height: 50.v),
                                        Text("lbl_hi_student",
                                            style:
                                                theme.textTheme.displaySmall),
                                        SizedBox(height: 6.v),
                                        Text("msg_sign_in_to_continue",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 35.v),
                                        Text("msg_mobile_number_email",
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 7.v),
                                        Text("msg_yashacharya_gmail_com",
                                            style: CustomTextStyles
                                                .bodyLargeBluegray90001),
                                        SizedBox(height: 15.v),
                                        Divider(endIndent: 6.h),
                                        SizedBox(height: 32.v),
                                        Text("lbl_password",
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 9.v),
                                        _buildGridRow(context),
                                        SizedBox(height: 17.v),
                                        Divider(endIndent: 6.h),
                                        SizedBox(height: 40.v),
                                        CustomElevatedButton(
                                            text: "lbl_sign_in",
                                            margin:
                                                const EdgeInsets.only(right: 6),
                                            rightIcon: Container(
                                                margin: const EdgeInsets.only(
                                                    left: 30),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowleft,
                                                    height: 17,
                                                    width: 25)),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientIndigoToPrimaryDecoration,
                                            onPressed: () {
                                              onTapSIGNIN(context);
                                            }),
                                        SizedBox(height: 19.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 6.h),
                                                child: Text(
                                                    "msg_forgot_password",
                                                    style: CustomTextStyles
                                                        .bodyLargeBluegray900)))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildGridRow(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 6),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGrid,
              height: 8,
              width: 90,
              margin: EdgeInsets.only(top: 3.v)),
          CustomImageView(
              imagePath: ImageConstant.imgEye, height: 12, width: 18)
        ]));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapSIGNIN(BuildContext context) {}
}
