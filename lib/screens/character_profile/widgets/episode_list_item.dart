import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';
import 'package:forth_flutter/data/network/models/episode_model.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:intl/intl.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'package:forth_flutter/theme/text_theme.dart';

class EpisodeListItem extends StatelessWidget {
  final Episode episodeData;

  EpisodeListItem(this.episodeData);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/episodeItem',
            arguments: {'episodeId': episodeData.id});
      },
      child: Container(
        padding: EdgeInsets.only(left: 16),
        child: Row(
          children: [
            Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(episodeData.imageName),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'СЕРИЯ ${episodeData.series.toString()}',
                      style: TextThemes.lightBlue_10_500,
                    ),
                    Text(
                      episodeData.name,
                      style: theme == ThemeType.dark
                          ? TextThemes.white_16_500
                          : TextThemes.white_16_500
                              .copyWith(color: ColorPalette.black),
                    ),
                    Text(
                      DateFormat.yMMMMd("ru_RU").format(episodeData.premiere),
                      //episodeData.premiere.toString(),
                      style: TextThemes.grey_14_400,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  MainIcons.arrowForward,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
