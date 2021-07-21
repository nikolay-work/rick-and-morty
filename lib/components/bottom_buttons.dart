import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class ButtonItem extends BottomNavigationBarItem {
  ButtonItem(String iconLink, String label)
      : super(
          backgroundColor: ColorPalette.blueBackground2,
          label: label,
          icon: SvgPicture.asset(
            iconLink,
            color: ColorPalette.blueText,
          ),
          activeIcon: SvgPicture.asset(
            iconLink,
            color: ColorPalette.greenText,
          ),
        );
}

List<ButtonItem> itemList = [
  ButtonItem(MainIcons.bottomBarCharacters, "Персонажи"),
  ButtonItem(MainIcons.bottomBarLocation, "Локации"),
  ButtonItem(MainIcons.bottomBarEpisodes, "Эпизоды"),
  ButtonItem(MainIcons.bottomBarSettings, "Настройки"),
];

class BottomButtons extends StatelessWidget {
  final int screenNumber;
  final Function jumpToPage;

  const BottomButtons(
      {Key key, @required this.screenNumber, @required this.jumpToPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      selectedLabelStyle: TextThemes.green_12_400,
      selectedItemColor: ColorPalette.greenText,
      unselectedLabelStyle: TextThemes.blue_12_400,
      unselectedItemColor: ColorPalette.blueText,
      showUnselectedLabels: true,
      items: itemList,
    );
  }
}
