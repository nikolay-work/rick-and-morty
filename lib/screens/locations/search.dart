import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/screens/locations/widgets/location_list_item.dart';
import 'package:forth_flutter/screens/locations/widgets/total_locations.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';

class SearchLocationsScreen extends StatelessWidget {
  final Map arguments;

  const SearchLocationsScreen({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeType theme = Provider.of<ThemeNotifier>(context).getThemeType();
    return BlocProvider<LocationsBloc>(
      create: (BuildContext context) => LocationsBloc()
        ..add(LocationsEvent.search(searchString: arguments['searchText'])),
      child: BlocConsumer<LocationsBloc, LocationsState>(
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
                      _data.locationList.length > 0
                          ? ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.fromLTRB(16, 4, 16, 24),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => LocationListItem(
                                    locationData: _data.locationList[index],
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    height: 24,
                                  ),
                              itemCount: _data.locationList.length)
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 139,
                                  ),
                                  Image(
                                    image: AssetImage(Images.noLocations),
                                  ),
                                  SizedBox(
                                    height: 64,
                                  ),
                                  Text(
                                    'Локации с таким \nназванием не найдено',
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
