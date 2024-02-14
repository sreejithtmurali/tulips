import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallInderPrimary => theme.textTheme.bodySmall!.inder.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterRed400 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallPretendardErrorContainer =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallPretendardRed200 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.red200,
      );
  static get bodySmallPretendardRed400 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargePoppinsBluegray900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargePoppinsGray700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelMediumInterGreen400 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterWhiteA70001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff252626 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF252626),
      );
  static get titleMediumff444444 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF444444),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get pretendard {
    return copyWith(
      fontFamily: 'Pretendard',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inder {
    return copyWith(
      fontFamily: 'Inder',
    );
  }
}
