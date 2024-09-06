import 'package:flutter/material.dart';

import 'package:school_management_system/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.12),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green400.withOpacity(0.1),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo300,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red600.withOpacity(0.1),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.12),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(1.56, 0.48),
          end: const Alignment(0.5, -0.53),
          colors: [
            appTheme.blue10001,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(1.56, 0.48),
          end: const Alignment(0.5, -0.53),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1,
        ),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.gray100,
          ],
        ),
      );

  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.gray100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => const BoxDecoration();
  static BoxDecoration get outlineBluegray60019 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray60019,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              -8,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20,
      );
  static BorderRadius get circleBorder212 => BorderRadius.circular(
        212,
      );
  static BorderRadius get circleBorder54 => BorderRadius.circular(
        54,
      );
  static BorderRadius get circleBorder68 => BorderRadius.circular(
        68,
      );

  // Custom borders
  static BorderRadius get customBorderBL15 => const BorderRadius.vertical(
        bottom: Radius.circular(15.0),
      );
  static BorderRadius get customBorderBL8 => const BorderRadius.vertical(
        bottom: Radius.circular(8.0),
      );
  static BorderRadius get customBorderLR15 => const BorderRadius.horizontal(
        right: Radius.circular(15.0),
      );
  static BorderRadius get customBorderTL32 => const BorderRadius.only(
        topLeft: Radius.circular(32.0),
      );
  static BorderRadius get customBorderTL7 => const BorderRadius.horizontal(
        left: Radius.circular(7),
      );
  static BorderRadius get customBorderTL8 => const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      );
  static BorderRadius get customBorderTL81 => const BorderRadius.vertical(
        top: Radius.circular(8.0),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
