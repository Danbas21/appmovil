import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management_system/core/providers/provider_students.dart';
import 'package:school_management_system/core/screens/card_student.dart';
import 'package:school_management_system/core/utils/image_constant.dart';
import 'package:school_management_system/core/utils/navigator_service.dart';
import 'package:school_management_system/core/utils/size_utils.dart';
import 'package:school_management_system/core/widgets/bard_search/bard_search.dart';
import 'package:school_management_system/theme/app_decoration.dart';
import 'package:school_management_system/theme/custom_button_style.dart';
import 'package:school_management_system/theme/custom_text_style.dart';
import 'package:school_management_system/theme/theme_helper.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

import '../../widgets/custom_elevated_button.dart';

class LoginVtwoScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    final TextEditingController searchController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.gradientBlueToPrimary,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 215),
                          Container(
                            height: 597,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 79, right: 23),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup8037,
                            height: 161,
                            width: 321,
                          ),
                          const SizedBox(height: 50),
                          Text(
                            "Hola Alumno",
                            style: theme.textTheme.displaySmall,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "ingresa los datos",
                            style: theme.textTheme.titleLarge,
                          ),
                          const SizedBox(height: 35),
                          Text(
                            "Ingresa tu CURP",
                            style: theme.textTheme.bodySmall,
                          ),
                          const SizedBox(height: 7),
                          BardSearch(),
                          const SizedBox(height: 15),
                          const Divider(endIndent: 6),
                          const SizedBox(height: 32),
                          Text(
                            "lbl_password",
                            style: theme.textTheme.bodySmall,
                          ),
                          const SizedBox(height: 9),
                          const SizedBox(height: 17),
                          const Divider(endIndent: 6),
                          const SizedBox(height: 40),
                          CustomElevatedButton(
                              text: "lbl_sign_in",
                              margin: const EdgeInsets.only(right: 6),
                              rightIcon: Container(
                                margin: const EdgeInsets.only(left: 30),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowleft,
                                  height: 17,
                                  width: 25,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientIndigoToPrimaryDecoration,
                              onPressed: () {
                                ref
                                    .read(studentProviderProvider.notifier)
                                    .updateStudents(searchController.text);
                                contex.go("/card_student");
                              }),
                          const SizedBox(height: 19),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: Text(
                                "msg_forgot_password",
                                style: CustomTextStyles.bodyLargeBluegray900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGridRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGrid,
            height: 80,
            width: 90,
            margin: const EdgeInsets.only(top: 3),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEye,
            height: 12,
            width: 18,
          ),
        ],
      ),
    );
  }
}

class BardSearch extends ConsumerWidget {
  const BardSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController searchController = TextEditingController();

    return SizedBox(
      width: 705,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xFF07090E),
                    size: 24,
                  ),
                  onPressed: () {
                    ref
                        .read(studentProviderProvider.notifier)
                        .updateStudents(searchController.text);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'CURP',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(74, 7, 9, 14),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0,
                      letterSpacing: 0.64,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
