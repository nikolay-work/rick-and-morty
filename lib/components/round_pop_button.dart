import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class RoundPopButton extends StatelessWidget {
  final Function action;

  const RoundPopButton({
    Key key,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return Center(
      //padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: action,
        child: Container(
          width: 48,
          height: 48,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme == ThemeType.dark
                ? ColorPalette.lightBlack
                : ColorPalette.white,
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: SvgPicture.asset(
            MainIcons.backArrow,
            color: theme == ThemeType.dark
                ? ColorPalette.white
                : ColorPalette.textOverlineLight,
          ),
        ),
      ),
    );
  }
}
