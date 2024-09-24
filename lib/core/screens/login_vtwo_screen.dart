import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:school_management_system/core/utils/image_constant.dart';
import 'package:school_management_system/models/authenticationuser.dart';
import 'package:school_management_system/theme/app_decoration.dart';
import 'package:school_management_system/theme/custom_button_style.dart';
import 'package:school_management_system/theme/theme_helper.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

import '../../widgets/custom_elevated_button.dart';

class LoginVtwoScreen extends ConsumerStatefulWidget {
  const LoginVtwoScreen({super.key});

  @override
  LoginVtwoScreenState createState() => LoginVtwoScreenState();
}

class LoginVtwoScreenState extends ConsumerState<LoginVtwoScreen> {
  final TextEditingController curpController = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    curpController.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                          TextField(
                            controller: curpController,
                            keyboardType: TextInputType.text,
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
                          const SizedBox(height: 15),
                          const Divider(endIndent: 6),
                          const SizedBox(height: 32),
                          Text(
                            "Contraseña",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Contraseña',
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
                          const SizedBox(height: 9),
                          const SizedBox(height: 17),
                          const Divider(endIndent: 6),
                          const SizedBox(height: 40),
                          CustomElevatedButton(
                            text: "Ingresar",
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
                            onPressed: () {},
                          ),
                          CustomElevatedButton(
                            text: "Registrate",
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
                            onPressed: () async {
                              await AuthUser().signUpWithEmailAndPassword(
                                curpController.text,
                                password.text,
                              );
                            },
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
