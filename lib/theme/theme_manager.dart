import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:forth_flutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'color_theme.dart';
import 'helpers/theme_types.dart';

// Dark and Light Srtyles for application

class ThemeNotifier with ChangeNotifier {
  ///
  /// APPLICATION DARK STYLE
  ///

  final darkTheme = ThemeData(
    fontFamily: 'Roboto',
    // primarySwatch: Colors.grey,
    primaryColor: ColorPalette.primaryDark,
    brightness: Brightness.dark,
    // backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    // accentIconTheme: IconThemeData(color: Colors.black),
    canvasColor: ColorPalette.lightBlack,
    dividerColor: ColorPalette.lightBlack,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: ColorPalette.primaryDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorPalette.green,
      unselectedItemColor: ColorPalette.gray,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 16 / 12,
        color: ColorPalette.green,
      ),

      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.5,
        color: ColorPalette.subTitle,
      ),
      //unselectedLabelStyle: Theme.of(context).textTheme.caption,
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        height: 40 / 34,
        letterSpacing: 0.25,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.15,
        height: 28 / 20,
        color: Colors.white,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        color: ColorPalette.textOverlineDark,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 16 / 12,
        color: ColorPalette.subTitle,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: ColorPalette.textOverlineDark,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
        height: 24 / 16,
        color: ColorPalette.textOverlineDark,
      ),
      subtitle2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.1,
        color: Colors.white,
      ),
      button: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 24 / 14,
        letterSpacing: 1.5,
        color: Colors.white,
      ),
    ),
    dialogBackgroundColor: ColorPalette.lightBlack,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => Colors.white),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorPalette.lightBlack,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: ColorPalette.gray,
      ),
    ),
  );

  ///
  /// APPLICATION LIGHT STYLE
  ///

  final lightTheme = ThemeData(
    fontFamily: 'Roboto',
    // primarySwatch: Colors.grey,
    primaryColor: ColorPalette.primaryLight,
    brightness: Brightness.light,
    // backgroundColor: const Color(0xFFE5E5E5),
    accentColor: ColorPalette.black,
    // accentIconTheme: IconThemeData(color: Colors.white),
    canvasColor: Colors.white,
    dividerColor: ColorPalette.dividerLight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorPalette.textOverlineLight,
      ),
    ),
    scaffoldBackgroundColor: ColorPalette.primaryLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorPalette.blue,
      unselectedItemColor: ColorPalette.gray4,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 16 / 12,
        color: ColorPalette.lightBlue,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.5,
        color: ColorPalette.gray4,
      ),
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        height: 40 / 34,
        letterSpacing: 0.25,
        color: ColorPalette.black,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.15,
        height: 28 / 20,
        color: ColorPalette.black,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        color: ColorPalette.textOverlineLight,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 16 / 12,
        color: ColorPalette.textOverlineLight,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: ColorPalette.textOverlineLight,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.15,
        color: ColorPalette.textOverlineLight,
      ),
      subtitle2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.1,
        color: Colors.black,
      ),
      button: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 24 / 14,
        letterSpacing: 1.5,
        color: ColorPalette.buttonText,
      ),
    ),
    dialogBackgroundColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
            (state) => ColorPalette.buttonText),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorPalette.dividerLight,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: ColorPalette.gray4,
      ),
    ),
  );

  // Active theme style
  ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  // Active theme type
  ThemeType _activeThemeType;
  ThemeType getThemeType() => _activeThemeType;

  ThemeNotifier() {
    // Initial active theme style and type
    initTheme();
  }

  void initTheme() {
    // Detected theme (light or dark)
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    if (brightness == Brightness.dark) {
      _themeData = darkTheme;
      _activeThemeType = ThemeType.dark;
    } else {
      _themeData = lightTheme;
      _activeThemeType = ThemeType.light;
    }

    // Get data from local save
    SharedPreferences.getInstance().then(
      (prefs) {
        final localThemeType = prefs.getString(Constants.ThemeType);

        if (localThemeType != null) {
          _activeThemeType = ThemeType.values
              .firstWhere((element) => element.toString() == localThemeType);
        } else {
          _activeThemeType = ThemeType.byDevice;
        }

        if (_activeThemeType == ThemeType.dark) {
          _themeData = darkTheme;
        } else if (_activeThemeType == ThemeType.light) {
          _themeData = lightTheme;
        } else {
          final brightness =
              SchedulerBinding.instance.window.platformBrightness;
          if (brightness == Brightness.dark) {
            _themeData = darkTheme;
          } else {
            _themeData = lightTheme;
          }
        }

        notifyListeners();
      },
    );
  }

  // Change application Theme (light, dark, system)
  void setThemeStyle(ThemeType themeType) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(Constants.ThemeType, '$themeType');
    _activeThemeType = themeType;
    initTheme();
  }
}
