import 'package:flutter/material.dart';
import 'package:forth_flutter/data/network/models/locations_model.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import '../view_model.dart';

class LocationListItem extends StatelessWidget {
  final LocationsDatum locationData;

  const LocationListItem({Key key, this.locationData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/locationItem',
                arguments: {'locationId': locationData.id});
          },
          child: Container(
            height: 150,
            padding: EdgeInsets.only(top: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              image: DecorationImage(
                image: NetworkImage(locationData.imageName),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          //height: 68,
          decoration: BoxDecoration(
            color: theme == ThemeType.dark
                ? ColorPalette.lightBlack
                : ColorPalette.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  locationData.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Мир · ' + locationData.measurements,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
