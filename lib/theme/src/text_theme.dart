part of '../theme.dart';

TextTheme createTextTheme() {
  return const TextTheme(
    // App text
    displayMedium: AppTextStyles.textStyle,

    // Note card text
    titleSmall: AppTextStyles.cardTitleStyle,
    bodySmall: AppTextStyles.cardTextStyle,
    labelSmall: AppTextStyles.cardDateStyle,
  );
}
