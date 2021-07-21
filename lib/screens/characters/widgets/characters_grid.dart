import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/resources/variables.dart';

import '../../../data/network/models/character_model.dart';
import 'character_grid_item.dart';

class CharactersGrid extends StatelessWidget {
  final List<Datum> charactersList;

  const CharactersGrid({
    Key key,
    this.charactersList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: charactersList.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(bottom: 8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => CharacterGridItem(charactersList[index]),
    );
  }
}
