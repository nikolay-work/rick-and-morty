import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Repository {
  Repository() {
    init();
  }

  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences _prefs;

  ThemeType getThemeType() {
    final type = _prefs.getString(Constants.ThemeType);
    return type as ThemeType;
  }
}
