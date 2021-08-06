import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class CharacterListItem extends StatelessWidget {
  final dynamic characterData;
  final bool showIconArrowForward;

  CharacterListItem(this.characterData, this.showIconArrowForward);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/characterProfile',
            arguments: {'characterId': characterData.id});
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(characterData.imageName),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    characterData.status == 0 ? 'ЖИВОЙ' : 'МЕРТВЫЙ',
                    style: characterData.status == 0
                        ? TextThemes.green_10_500
                        : TextThemes.red_10_500,
                  ),
                  Text(
                    characterData.fullName,
                    style: theme == ThemeType.dark
                        ? TextThemes.white_16_500
                        : TextThemes.white_16_500
                            .copyWith(color: ColorPalette.black),
                  ),
                  Text(
                    "${characterData.race}, ${characterData.gender == 0 ? 'Мужской' : 'Женский'}",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
          if (showIconArrowForward)
            Expanded(
              flex: 0,
              child: SvgPicture.asset(
                MainIcons.arrowForward,
                color: theme == ThemeType.dark
                    ? ColorPalette.white
                    : ColorPalette.black,
              ),
            ),
        ],
      ),
    );
  }
}
