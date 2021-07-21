import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

import '../screen.dart';

class TotalCharacters extends StatelessWidget {
  final String count;
  final bool isGrid;
  final setIsGrid;

  const TotalCharacters({Key key, this.count, this.isGrid, this.setIsGrid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'ВСЕГО ПЕРСОНАЖЕЙ: ' + count,
              style: TextThemes.blue_10_500,
            ),
          ),
          Expanded(
            flex: 0,
            child: IconButton(
              onPressed: () {
                setIsGrid();
              },
              icon: SvgPicture.asset(
                isGrid ? MainIcons.list : MainIcons.grid,
                color: ColorPalette.blueText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
