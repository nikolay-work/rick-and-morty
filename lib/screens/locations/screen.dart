import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/components/bottom_buttons.dart';
import 'package:forth_flutter/components/search_bar.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/screens/locations/widgets/location_list_item.dart';
import 'package:forth_flutter/screens/locations/widgets/total_locations.dart';
import 'package:forth_flutter/theme/color_theme.dart';

import 'bloc/bloc.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationsBloc>(
      create: (BuildContext context) =>
          LocationsBloc()..add(LocationsEvent.initial()),
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
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: SearchBar(
                    hintText: 'Найти локацию',
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: TotalLocations(
                      count: _data.locationList.length.toString(),
                    ),
                  ),
                  //backgroundColor: ColorPalette.black,
                ),
                body: ListView.separated(
                    padding: EdgeInsets.fromLTRB(16, 4, 16, 24),
                    itemBuilder: (context, index) => LocationListItem(
                          locationData: _data.locationList[index],
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 24,
                        ),
                    itemCount: _data.locationList.length),
              ),
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
