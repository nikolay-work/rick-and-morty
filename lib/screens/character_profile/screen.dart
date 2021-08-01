import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/components/item_frame.dart';
import 'package:forth_flutter/components/round_pop_button.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/screens/character_profile/widgets/episodes_list.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/resources/variables.dart';

import 'bloc/bloc.dart';

class CharacterProfile extends StatelessWidget {
  final Map arguments;

  const CharacterProfile({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(arguments['characterId']);

    return ItemFrame(
      itemBody: BlocProvider<CharacterProfileBloc>(
        create: (BuildContext context) =>
            CharacterProfileBloc(id: arguments['characterId'])
              ..add(CharacterProfileEvent.initial()),
        child: BlocConsumer<CharacterProfileBloc, CharacterProfileState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (_data) => Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(_data.characterData.imageName),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: new BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.65),
                            Colors.black.withOpacity(0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 218,
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 90),
                                color: ColorPalette.blueBackground,
                                child: Column(
                                  children: [
                                    //Text(arguments['characterId']),
                                    Text(
                                      _data.characterData.fullName,
                                      style: TextThemes.white_34_400,
                                    ),
                                    Text(
                                      _data.characterData.status == 0
                                          ? 'ЖИВОЙ'
                                          : 'МЕРТВЫЙ',
                                      style: _data.characterData.status == 0
                                          ? TextThemes.green_10_500
                                          : TextThemes.red_10_500,
                                    ),
                                    const SizedBox(
                                      height: 26,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Text(
                                        _data.characterData.about,
                                        style: TextThemes.white_13_400,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Пол',
                                                  style: TextThemes.blue_12_400,
                                                ),
                                                Text(
                                                  _data.characterData.gender ==
                                                          0
                                                      ? 'Мужской'
                                                      : 'Женский',
                                                  style: TextThemes.white_14_400
                                                      .copyWith(height: 1.8),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Расса',
                                                  style: TextThemes.blue_12_400,
                                                ),
                                                Text(
                                                  _data.characterData.race,
                                                  style: TextThemes.white_14_400
                                                      .copyWith(height: 1.8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Локация',
                                                  style: TextThemes.blue_12_400,
                                                ),
                                                Text(
                                                  _data.characterData.location
                                                      .name,
                                                  style: TextThemes.white_14_400
                                                      .copyWith(height: 1.8),
                                                ),
                                              ],
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
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Местоположение',
                                                  style: TextThemes.blue_12_400,
                                                ),
                                                Text(
                                                  'Земля (Измерение подменны)',
                                                  style: TextThemes.white_14_400
                                                      .copyWith(height: 1.8),
                                                ),
                                              ],
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
                                    Divider(
                                      color: ColorPalette.blueBackground2,
                                      thickness: 2,
                                      height: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Эпизоды',
                                              style: TextThemes.white_20_500,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 0,
                                            child: Text(
                                              'Все эпизоды',
                                              style: TextThemes.blue_12_400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    EpisodesList(
                                      episodesList: episodesList,
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -82,
                                child: CircleAvatar(
                                  radius: 82,
                                  backgroundColor: ColorPalette.blueBackground,
                                  child: CircleAvatar(
                                    radius: 73,
                                    backgroundImage: NetworkImage(
                                        _data.characterData.imageName),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
