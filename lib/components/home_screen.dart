import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forth_flutter/screens/characters/screen.dart';
import 'package:forth_flutter/screens/episodes/screen.dart';
import 'package:forth_flutter/screens/locations/screen.dart';
import 'package:forth_flutter/screens/settings/screen.dart';
import 'package:forth_flutter/theme/color_theme.dart';

import 'bottom_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController(
    initialPage: 0,
  );

  int screenNumber = 0;

  void changePage(int index) {
    setState(() {
      screenNumber = index;
    });
    print(index);
  }

  void goToPage(int index) {
    controller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        //statusBarColor: ColorPalette.black,
        //statusBarBrightness: Brightness.dark,
        ));
    return Scaffold(
      //backgroundColor: ColorPalette.black,
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          changePage(index);
        },
        children: [
          CharactersScreen(),
          LocationsScreen(),
          EpisodesScreen(),
          SettingsScreen()
        ],
      ),
      bottomNavigationBar: BottomButtons(
        screenNumber: screenNumber,
        jumpToPage: goToPage,
      ),
    );
  }
}
