import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';

import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/screens/characters/bloc/bloc.dart';
import 'package:forth_flutter/screens/characters/widgets/total_characters.dart';
import 'package:forth_flutter/screens/characters/widgets/characters_grid.dart';
import 'package:forth_flutter/components/characters_list.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class SearchCharactersScreen extends StatelessWidget {
  final Map arguments;

  const SearchCharactersScreen({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return BlocProvider<CharactersBloc>(
      create: (BuildContext context) => CharactersBloc()
        ..add(CharactersEvent.search(searchString: arguments['searchText'])),
      child: BlocConsumer<CharactersBloc, CharactersState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              data: (_data) => Scaffold(
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
                      _data.charactersList.length > 0
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: CharactersList(
                                charactersList: _data.charactersList,
                                scrollable: false,
                              ),
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Image(
                                    image: AssetImage(Images.noCharacters),
                                  ),
                                  SizedBox(
                                    height: 59,
                                  ),
                                  Text(
                                    'Персонаж с таким именем \nне найден',
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
              error: (e) => Center(
                child: Text('!!!!!!!!!!!!!!!!!!$e!!!!!!!!!!!!!!!!!!!'),
              ),
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
