import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/screens/episodes/bloc/bloc.dart';
import 'package:forth_flutter/theme/text_theme.dart';

import '../view_model.dart';

class ChooseSeasonButtons extends StatelessWidget {
  final List<SeasonNameModel> list;
  final int currentSeasonId;

  const ChooseSeasonButtons({Key key, this.list, this.currentSeasonId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => TextButton(
                onPressed: () => BlocProvider.of<EpisodesBloc>(context).add(
                    EpisodesEvent.changeSeason(currentSeasonId: index + 1)),
                child: Text(list[index].name,
                    style: (currentSeasonId == (index + 1))
                        ? TextThemes.white_14_500_2
                        : TextThemes.blue_14_500),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: list.length),
    );
  }
}
