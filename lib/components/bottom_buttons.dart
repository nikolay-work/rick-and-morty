import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class ButtonItem extends BottomNavigationBarItem {
  ButtonItem(String iconLink, String label, ThemeType theme)
      : super(
          //backgroundColor: ColorPalette.lightBlack,
          label: label,
          icon: SvgPicture.asset(
            iconLink,
            color: theme == ThemeType.dark
                ? ColorPalette.gray
                : ColorPalette.gray4,
          ),
          activeIcon: SvgPicture.asset(
            iconLink,
            color: theme == ThemeType.dark
                ? ColorPalette.green
                : ColorPalette.lightBlue,
          ),
        );
}

// List<ButtonItem> itemList = [
//   ButtonItem(MainIcons.bottomBarCharacters, "Персонажи"),
//   ButtonItem(MainIcons.bottomBarLocation, "Локации"),
//   ButtonItem(MainIcons.bottomBarEpisodes, "Эпизоды"),
//   ButtonItem(MainIcons.bottomBarSettings, "Настройки"),
// ];

class BottomButtons extends StatelessWidget {
  final int screenNumber;
  final Function jumpToPage;

  const BottomButtons(
      {Key key, @required this.screenNumber, @required this.jumpToPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return BottomNavigationBar(
      onTap: (int index) {
        jumpToPage(index);

        // const List<String> routes = [
        //   '/characters',
        //   '/locations',
        //   '/episodes',
        //   '/settings',
        // ];
        // Navigator.pushNamed(context, routes[index]);
      },
      currentIndex: screenNumber,
      //selectedLabelStyle: TextThemes.green_12_400,
      //selectedItemColor: ColorPalette.green,
      //unselectedLabelStyle: TextThemes.grey_12_400,
      //unselectedLabelStyle: Theme.of(context).textTheme.caption,
      //unselectedItemColor: ColorPalette.gray,
      showUnselectedLabels: true,
      items: [
        ButtonItem(MainIcons.bottomBarCharacters, "Персонажи", theme),
        ButtonItem(MainIcons.bottomBarLocation, "Локации", theme),
        ButtonItem(MainIcons.bottomBarEpisodes, "Эпизоды", theme),
        ButtonItem(MainIcons.bottomBarSettings, "Настройки", theme),
      ],
    );
  }
}
