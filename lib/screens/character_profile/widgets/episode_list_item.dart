import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/data/network/models/episode.dart';
import 'package:forth_flutter/resources/icons.dart';

import 'package:forth_flutter/theme/text_theme.dart';

class EpisodeListItem extends StatelessWidget {
  final EpisodeModel episodeData;

  EpisodeListItem(this.episodeData);

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage(episodeData.picture),
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
                      'СЕРИЯ ${episodeData.episode.toString()}',
                      style: TextThemes.lightBlue_10_500,
                    ),
                    Text(
                      episodeData.title,
                      style: TextThemes.white_16_500,
                    ),
                    Text(
                      episodeData.date,
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
