import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/components/characters_list.dart';
import 'package:forth_flutter/components/item_frame.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:intl/intl.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';

class EpisodeItem extends StatelessWidget {
  final Map arguments;

  const EpisodeItem({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return ItemFrame(
      itemBody: BlocProvider<EpisodeItemBloc>(
        create: (BuildContext context) =>
            EpisodeItemBloc(id: arguments['episodeId'])
              ..add(EpisodeItemEvent.initial()),
        child: BlocConsumer<EpisodeItemBloc, EpisodeItemState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (_data) => SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 298,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(_data.episodeData.imageName),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 251,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: theme == ThemeType.dark
                                ? ColorPalette.black
                                : ColorPalette.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(26.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 333, 0, 16),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    child: Text(
                                      _data.episodeData.name,
                                      textAlign: TextAlign.center,
                                      style: theme == ThemeType.dark
                                          ? TextThemes.white_24_700
                                          : TextThemes.white_24_700.copyWith(
                                              color: ColorPalette.black),
                                    ),
                                  ),
                                  Align(
                                    child: Text(
                                      'СЕРИЯ ' +
                                          _data.episodeData.series.toString(),
                                      style: TextThemes.lightBlue_10_500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Text(
                                    _data.episodeData.plot,
                                    textAlign: TextAlign.justify,
                                    style: theme == ThemeType.dark
                                        ? TextThemes.white_13_400_2
                                        : TextThemes.white_13_400_2.copyWith(
                                            color: ColorPalette.black),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Text(
                                    'Премьера',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                  Text(
                                    DateFormat.yMMMMd("ru_RU")
                                        .format(_data.episodeData.premiere),
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              //color: ColorPalette.lightBlack,
                              thickness: 2,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Text(
                                    'Персонажи',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  CharactersList(
                                    charactersList:
                                        _data.episodeData.characters,
                                    showIconArrowForward: true,
                                    scrollable: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 201,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            decoration: BoxDecoration(
                              color: ColorPalette.lightBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: SvgPicture.asset(
                              MainIcons.play,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }),
      ),
    );
  }
}
