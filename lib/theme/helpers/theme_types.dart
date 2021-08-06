enum ThemeType { dark, light, byDevice }

String themeName(ThemeType themeType) {
  switch (themeType) {
    case ThemeType.dark:
      return "dark";
    case ThemeType.light:
      return "light";
    case ThemeType.byDevice:
      return "byDevice";
  }
}
