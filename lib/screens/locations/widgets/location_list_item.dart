import 'package:flutter/material.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

import '../view_model.dart';

class LocationListItem extends StatelessWidget {
  final LocationModel locationData;

  const LocationListItem({Key key, this.locationData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage(locationData.photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: 68,
          decoration: BoxDecoration(
            color: ColorPalette.blueBackground2,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  locationData.name,
                  style: TextThemes.white_20_500,
                ),
                Text(
                  'Мир · ' + locationData.location,
                  style: TextThemes.grey_12_400,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
