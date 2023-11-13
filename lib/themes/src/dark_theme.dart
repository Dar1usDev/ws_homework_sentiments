part of '../theme.dart';

ThemeData createDarkTheme() {
  // TODO dark theme
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    //fontFamily: 'Montserrat',
    //textTheme: ThemeData.dark().textTheme,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      foregroundColor: AppColors.accentColor,
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      buttonColor: AppColors.primaryColor,
    ),
  );
}
