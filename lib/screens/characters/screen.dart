import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/screens/characters/bloc/bloc.dart';
import 'package:forth_flutter/screens/characters/widgets/total_characters.dart';
import 'package:forth_flutter/screens/characters/widgets/characters_grid.dart';
import 'package:forth_flutter/components/characters_list.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (BuildContext context) =>
          CharactersBloc()..add(CharactersEvent.initial()),
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
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: SearchBar(
                    hintText: 'Найти персонажа',
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: TotalCharacters(
                      count: _data.charactersList.length.toString(),
                      isGrid: _data.isGrid,
                      setIsGrid: () => BlocProvider.of<CharactersBloc>(context)
                          .add(CharactersEvent.change()),
                    ),
                  ),
                  //backgroundColor: ColorPalette.black,
                ),
                body: !_data.isGrid
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: CharactersList(
                            charactersList: _data.charactersList),
                      )
                    : CharactersGrid(charactersList: _data.charactersList),
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
