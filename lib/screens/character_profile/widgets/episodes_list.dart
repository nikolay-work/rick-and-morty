import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/episode.dart';

import 'package:forth_flutter/screens/character_profile/widgets/episode_list_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeModel> episodesList;

  const EpisodesList({Key key, this.episodesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 0.0),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => EpisodeListItem(
        episodesList[index],
      ),
      shrinkWrap: true,
      itemCount: episodesList.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
