import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';
import 'package:forth_flutter/screens/episodes/widgets/choose_season_buttons.dart';
import 'package:forth_flutter/screens/episodes/widgets/episode_list_item.dart';
import 'package:forth_flutter/theme/color_theme.dart';

import 'bloc/bloc.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EpisodesBloc>(
      create: (BuildContext context) =>
          EpisodesBloc()..add(EpisodesEvent.initial()),
      child: BlocConsumer<EpisodesBloc, EpisodesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              data: (_data) => Scaffold(
                //backgroundColor: ColorPalette.black,
                appBar: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: SearchBar(
                    hintText: 'Найти эпизод',
                    showSuffixIcon: false,
                    searchFunction: (String text) => Navigator.pushNamed(
                        context, '/searchEpisodesScreen',
                        arguments: {'searchText': text}),
                    //arguments: {'searchText': "Найт1"}),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: ChooseSeasonButtons(
                        list: _data.seasonsNameList,
                        currentSeasonId: _data.currentSeasonId),
                  ),
                  //backgroundColor: ColorPalette.black,
                ),
                body: ListView.separated(
                    padding: EdgeInsets.only(bottom: 14),
                    itemBuilder: (context, index) =>
                        EpisodeListItem(_data.episodesList[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 24,
                        ),
                    itemCount: _data.episodesList.length),
              ),
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
