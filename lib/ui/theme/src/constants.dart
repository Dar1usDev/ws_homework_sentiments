part of '../theme.dart';

abstract class AppTextStyles {
  static const textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const cardTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static const cardTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const cardDateStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );
}

abstract class AppColors {
  static const primaryColor = Color(0xFF002B22);
  static const accentColor = Color(0xFF009B92);
  static const cardColor = Color(0xFF202020);
  static const backColor = Color(0xFF151515);
}
