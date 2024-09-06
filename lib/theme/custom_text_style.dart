import 'package:flutter/material.dart';
import 'package:school_management_system/core/utils/size_utils.dart';
import 'package:school_management_system/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 16.fSize,
      );
  static get bodyLargePlusJakartaDisplayOnPrimary =>
      theme.textTheme.bodyLarge!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeRed600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red600,
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.57),
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumBluegray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.53),
      );
  static get bodyMediumGreen7009d => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green7009d,
        fontSize: 13.fSize,
      );
  static get bodyMediumIndigo30001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo30001,
      );
  static get bodyMediumInterWhiteA700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumPlusJakartaDisplayBluegray600 =>
      theme.textTheme.bodyMedium!.plusJakartaDisplay.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumPlusJakartaDisplayOnPrimary =>
      theme.textTheme.bodyMedium!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallPlusJakartaDisplayBluegray300 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallPlusJakartaDisplayBluegray600 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodySmallPlusJakartaDisplayBluegray90090 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: appTheme.blueGray90090,
      );
  static get bodySmallPlusJakartaDisplayOnPrimary =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallPlusJakartaDisplayOnPrimary_1 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPlusJakartaDisplayWhiteA700 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 46.fSize,
      );
  // Headline text style
  static get headlineLargeBebasNeueBluegray900 =>
      theme.textTheme.headlineLarge!.bebasNeue.copyWith(
        color: appTheme.blueGray900,
      );
  // Label text style
  static get labelLargeBlue600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue600,
      );
  static get labelLargeBlueA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
      );
  static get labelLargeBlueA400Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600.withOpacity(0.56),
      );
  static get labelLargeBluegray600Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600.withOpacity(0.56),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOrangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orangeA200,
      );
  static get labelLargeSourceSansProBlack900 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSourceSansProBluegray900 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSourceSansProGray500 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSourceSansProGreen800 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.green800,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSourceSansProIndigo300 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.indigo300,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSourceSansProIndigo30002 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.indigo30002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSourceSansProRed700 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.red700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSourceSansProWhiteA700 =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSourceSansProWhiteA700Bold =>
      theme.textTheme.labelLarge!.sourceSansPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumGreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPlusJakartaDisplayOnPrimary =>
      theme.textTheme.titleMedium!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallBluegray90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallIndigo300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo300,
      );
  static get titleSmallPlusJakartaDisplayOnPrimary =>
      theme.textTheme.titleSmall!.plusJakartaDisplay.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPlusJakartaDisplayWhiteA700 =>
      theme.textTheme.titleSmall!.plusJakartaDisplay.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get sourceSansPro {
    return copyWith(
      fontFamily: 'Source Sans Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get bebasNeue {
    return copyWith(
      fontFamily: 'Bebas Neue',
    );
  }

  TextStyle get plusJakartaDisplay {
    return copyWith(
      fontFamily: 'Plus Jakarta Display',
    );
  }
}
