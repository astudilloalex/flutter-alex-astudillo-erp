import 'package:alex_astudillo_erp/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData get light {
    return ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: LightColors.primary,
        foregroundColor: LightColors.secondaryVariant,
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
      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: LightColors.secondaryVariant,
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
      scaffoldBackgroundColor: LightColors.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
