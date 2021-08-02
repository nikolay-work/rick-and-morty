import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/resources/variables.dart';

import '../data/network/models/character_model.dart';
import 'character_list_item.dart';

class CharactersList extends StatelessWidget {
  final List<dynamic> charactersList;
  final bool showIconArrowForward;
  final bool scrollable;

  const CharactersList({
    Key key,
    @required this.charactersList,
    this.showIconArrowForward = false,
    this.scrollable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 0.0),
      physics: !scrollable
          ? const NeverScrollableScrollPhysics()
          : const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) => CharacterListItem(
        charactersList[index],
        showIconArrowForward,
      ),
      shrinkWrap: true,
      itemCount: charactersList.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
