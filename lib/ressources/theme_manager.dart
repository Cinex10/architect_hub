import 'package:architect_hub/ressources/color_manager.dart';
import 'package:architect_hub/ressources/font_manager.dart';
import 'package:architect_hub/ressources/styles_manager.dart';
import 'package:architect_hub/ressources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() => ThemeData(
      //main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey,
      splashColor: ColorManager.lightPrimary, // ripple effect color
      //appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s4,
        shadowColor: ColorManager.grey,
        titleTextStyle:
            getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
      ),
      //bottom navbar theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: getRegularStyle(
          color: ColorManager.black,
        ),
        selectedItemColor: ColorManager.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.black,
          disabledBackgroundColor: ColorManager.grey,
          textStyle: getBoldStyle(
            color: ColorManager.white,
            fontSize: AppSize.s16,
          ),
        ),
      ),
      buttonTheme: const ButtonThemeData(
        //  overlayColor:  Colors.red,
        splashColor: Colors.red,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(

            // splashColor: ColorManager.lightGrey,

            ),
      ),
      sliderTheme: SliderThemeData(
        overlayColor: ColorManager.black.withOpacity(0.2),
        activeTrackColor: ColorManager.black,
        activeTickMarkColor: ColorManager.black,
        thumbColor: ColorManager.black,
        inactiveTrackColor: ColorManager.lightGrey,
      ),
      //input decoration theme
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorManager.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(5),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.black,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.black,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        prefixIconColor: ColorManager.black,
      ),
      dividerTheme: const DividerThemeData(
        color: ColorManager.lightGrey,
        space: AppSize.s1_5,
      ),

      switchTheme: const SwitchThemeData(
        trackColor: MaterialStatePropertyAll(ColorManager.grey),
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorManager.black),
    );
