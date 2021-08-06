import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class CharacterGridItem extends StatelessWidget {
  final CharactersDatum characterData;

  CharacterGridItem(this.characterData);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/characterProfile',
            arguments: {'characterId': characterData.id});
      },
      child: SizedBox(
        width: 164,
        height: 192,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(characterData.imageName),
              ),
            ),
            Text(
              characterData.status == 0 ? 'ЖИВОЙ' : 'МЕРТВЫЙ',
              style: characterData.status == 0
                  ? TextThemes.green_10_500
                  : TextThemes.red_10_500,
            ),
            Text(
              characterData.fullName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "${characterData.race}, ${characterData.gender == 0 ? 'Мужской' : 'Женский'}",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
