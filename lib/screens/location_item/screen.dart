import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/components/characters_list.dart';
import 'package:forth_flutter/components/item_frame.dart';
import 'package:forth_flutter/screens/locations/widgets/location_list_item.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';

class LocationItem extends StatelessWidget {
  final Map arguments;

  const LocationItem({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return ItemFrame(
      itemBody: BlocProvider<LocationItemBloc>(
        create: (BuildContext context) =>
            LocationItemBloc(id: arguments['locationId'])
              ..add(LocationItemEvent.initial()),
        child: BlocConsumer<LocationItemBloc, LocationItemState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (_data) => SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 298,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(_data.locationData.imageName),
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
                                ? ColorPalette.lightBlack
                                : ColorPalette.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(26.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 285, 16, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _data.locationData.name,
                              style: theme == ThemeType.dark
                                  ? TextThemes.white_24_700
                                  : TextThemes.white_24_700
                                      .copyWith(color: ColorPalette.black),
                            ),
                            Text(
                              'Мир · ' + _data.locationData.measurements,
                              style: Theme.of(context).textTheme.caption,
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                              _data.locationData.about,
                              style: theme == ThemeType.dark
                                  ? TextThemes.white_13_400_2
                                  : TextThemes.white_13_400_2
                                      .copyWith(color: ColorPalette.black),
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                              'Персонажи',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            CharactersList(
                              charactersList: _data.charactersList,
                              showIconArrowForward: true,
                              scrollable: false,
                            )
                          ],
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
