import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/episode.dart';
import 'package:forth_flutter/data/network/models/episodes_model.dart';

import 'package:forth_flutter/theme/text_theme.dart';

class EpisodeListItem extends StatelessWidget {
  final EpisodesDatum episodeData;

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
              width: 60,
              height: 60,
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
                      style: TextThemes.blue2_10_500,
                    ),
                    Text(
                      episodeData.name,
                      style: TextThemes.white_16_500,
                    ),
                    Text(
                      episodeData.premiere.toString().substring(0, 10),
                      style: TextThemes.grey_14_400,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
