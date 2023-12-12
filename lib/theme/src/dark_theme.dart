part of '../theme.dart';

ThemeData createDarkTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backColor,
    cardColor: AppColors.cardColor,
    textTheme: createTextTheme(), // TODO откорректировать textTheme
    fontFamily: 'Ubuntu',
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      foregroundColor: AppColors.accentColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(AppColors.cardColor),
        foregroundColor: MaterialStatePropertyAll<Color>(Colors.white70),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.accentColor,
    ),
  );
}
