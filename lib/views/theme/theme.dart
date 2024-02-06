part of 'index.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.getFont('Outfit',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        actionsIconTheme: const IconThemeData(color: AppColor.PRIMARY),
        iconTheme: const IconThemeData(color: AppColor.PRIMARY),
        backgroundColor: AppColor.primaryBackgroundColor,
      ),
      cardTheme: const CardTheme(color: AppColor.primaryBackgroundColor),
      primaryColor: AppColor.PRIMARY,
      highlightColor: AppColor.PRIMARY,
      scaffoldBackgroundColor: AppColor.primaryBackgroundColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.getFont('Outfit',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        displayMedium: GoogleFonts.getFont('Outfit',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        displaySmall: GoogleFonts.getFont('Outfit',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        titleLarge: GoogleFonts.getFont('Outfit',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        titleMedium: GoogleFonts.getFont('Outfit',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        titleSmall: GoogleFonts.getFont('Outfit',
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor),
        bodyLarge: GoogleFonts.getFont('Outfit',
            fontSize: 16, color: AppColor.primaryTextColor),
        bodyMedium: GoogleFonts.getFont('Outfit',
            fontSize: 14, color: AppColor.primaryTextColor),
        bodySmall: GoogleFonts.getFont('Outfit',
            fontSize: 12, color: AppColor.primaryTextColor.withOpacity(0.4)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.inputFillColor,
        prefixIconColor: AppColor.primaryIconColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
          borderSide: const BorderSide(
            color: AppColor.primaryBorderColor,
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: AppColor.PRIMARY),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColor.BODY_COLOR),
              foregroundColor: MaterialStateProperty.all<Color>(
                  AppColor.primaryBackgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))))),
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: AppColor.BODY_COLOR,
        fillColor: AppColor.BODY_COLOR.withOpacity(0.1),
        textStyle: const TextStyle(color: AppColor.primaryTextColor),
        selectedBorderColor: AppColor.BODY_COLOR,
        borderRadius: BorderRadius.circular(8.0),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColor.PRIMARY,
        onPrimary: AppColor.PRIMARY,
        secondary: AppColor.SECONDARY,
        onSecondary: AppColor.SECONDARY,
        surface: AppColor.primaryBackgroundColor,
        onSurface: AppColor.primaryBackgroundColor,
        error: Colors.red,
        onError: Colors.red,
        background: AppColor.primaryBackgroundColor,
        onBackground: AppColor.primaryBackgroundColor,
        brightness: Brightness.light,
      ),
    );
  }
}
