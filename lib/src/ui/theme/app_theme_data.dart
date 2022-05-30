import 'package:alex_astudillo_erp/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData get light {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: LightColors.primary,
        elevation: 0.0,
        foregroundColor: LightColors.secondaryVariant,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20.0,
          color: LightColors.secondaryVariant,
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      // Check box theme
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      // Dialog
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      // Elevated button theme.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          primary: LightColors.secondary,
          minimumSize: const Size(48.0, 48.0),
        ),
      ),
      // Input theme (TextFormField, TextField).
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: LightColors.secondaryVariant,
          minimumSize: const Size(48.0, 48.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          side: const BorderSide(color: LightColors.secondary),
        ),
      ),
      // Text button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: LightColors.secondaryVariant,
        ),
      ),
      textTheme: TextTheme(
        bodyText2: GoogleFonts.poppins(
          color: LightColors.secondaryVariant,
        ),
      ),
      primaryColor: LightColors.primary,
      scaffoldBackgroundColor: LightColors.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
