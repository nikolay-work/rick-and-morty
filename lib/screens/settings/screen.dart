import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/screens/settings/widgets/dialog_alert.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorPalette.blueBackground,
      appBar: AppBar(
        elevation: 0,
        //automaticallyImplyLeading: false,
        title: Text(
          'Настройки',
          style: TextThemes.white_20_500,
        ),
        backwardsCompatibility: false,
        backgroundColor: ColorPalette.blueBackground,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 118,
              ),
              Text(
                'ВНЕШНИЙ ВИД',
                style: TextThemes.blue_10_500,
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return DialogAlert();
                    },
                  );
                },
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      MainIcons.palette,
                      color: ColorPalette.white,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Темная тема',
                              style: TextThemes.white_16_400,
                            ),
                            Text(
                              'Включена',
                              style: TextThemes.grey_14_400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      MainIcons.arrowForward,
                      color: ColorPalette.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Divider(
                thickness: 2,
                color: ColorPalette.blueBackground2,
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                'О ПРИЛОЖЕНИИ',
                style: TextThemes.blue_10_500,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
                style: TextThemes.white_13_400,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 36,
              ),
              Divider(
                thickness: 2,
                color: ColorPalette.blueBackground2,
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                'ВЕРСИЯ ПРИЛОЖЕНИЯ',
                style: TextThemes.blue_10_500,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Rick & Morty  v1.0.0',
                style: TextThemes.white_13_400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
