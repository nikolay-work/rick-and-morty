import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/screens/episodes/widgets/choose_season_buttons.dart';
import 'package:forth_flutter/screens/episodes/widgets/episode_list_item.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';

class SearchEpisodesScreen extends StatelessWidget {
  final Map arguments;
  const SearchEpisodesScreen({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return BlocProvider<EpisodesBloc>(
      create: (BuildContext context) => EpisodesBloc()
        ..add(EpisodesEvent.search(searchString: arguments['searchText'])),
      child: BlocConsumer<EpisodesBloc, EpisodesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              searchData: (_data) => Scaffold(
                //backgroundColor: ColorPalette.black,
                appBar: AppBar(
                  backgroundColor: theme == ThemeType.dark
                      ? ColorPalette.lightBlack
                      : ColorPalette.white,
                  shadowColor: theme == ThemeType.dark
                      ? ColorPalette.lightBlack
                      : ColorPalette.dividerLight,
                  elevation: 1,
                  backwardsCompatibility: true,
                  title: Text(arguments['searchText']),
                  actions: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.clear),
                    ),
                  ], //arguments['searchText'],

                  // backgroundColor: ColorPalette.black,
                ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Text(
                          "РЕЗУЛЬТАТЫ ПОИСКА",
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                      _data.episodesList.length > 0
                          ? ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.only(bottom: 14),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  EpisodeListItem(_data.episodesList[index]),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 24,
                                  ),
                              itemCount: _data.episodesList.length)
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 82,
                                  ),
                                  Image(
                                    image: AssetImage(Images.noEpisodes),
                                  ),
                                  SizedBox(
                                    height: 44,
                                  ),
                                  Text(
                                    'Эпизода с таким \nназванием нет',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
