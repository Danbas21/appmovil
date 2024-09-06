import 'package:flutter/material.dart';
import 'package:school_management_system/theme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );
  static ButtonStyle get fillBlueATL4 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray10001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo300,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              15,
            ),
          ),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientIndigoToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.74, 1),
          end: const Alignment(1.53, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimaryTL10Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.58, 1),
          end: const Alignment(1.4, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimaryTL101Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.52, 1),
          end: const Alignment(1.4, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimaryTL102Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.44, 1),
          end: const Alignment(1.31, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimaryTL103Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.49, 1),
          end: const Alignment(1.3, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToPrimaryTL104Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.49, 1),
          end: const Alignment(1.4, 0),
          colors: [
            appTheme.indigo600,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
