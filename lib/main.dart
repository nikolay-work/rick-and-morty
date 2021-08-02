import 'package:flutter/material.dart';
import 'package:forth_flutter/components/custom_router.dart';
import 'package:forth_flutter/screens/episode_item/screen.dart';
import 'package:forth_flutter/screens/episodes/screen.dart';
import 'package:forth_flutter/screens/location_item/screen.dart';
import 'package:forth_flutter/screens/locations/screen.dart';
import 'package:forth_flutter/screens/settings/screen.dart';

import 'package:forth_flutter/screens/characters/screen.dart';

import 'components/home_screen.dart';
import 'screens/character_profile/screen.dart';

import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Rick and Morty',
      //initialRoute: '/',
      home: HomeScreen(),

      onGenerateRoute: (settings) {
        if (settings.name == '/characters') {
          return CustomRouter(page: CharactersScreen());
        } else if (settings.name == '/locations') {
          return CustomRouter(page: LocationsScreen());
        } else if (settings.name == '/episodes') {
          return CustomRouter(page: EpisodesScreen());
        } else if (settings.name == '/settings') {
          return CustomRouter(page: SettingsScreen());
        } else if (settings.name == '/characterProfile') {
          //  print(settings.arguments);
          return CustomRouter(
              page: CharacterProfile(arguments: settings.arguments));
        } else if (settings.name == '/episodeItem') {
          //print(settings.arguments);
          return CustomRouter(page: EpisodeItem(arguments: settings.arguments));
        } else if (settings.name == '/locationItem') {
          //  print(settings.arguments);
          return CustomRouter(
              page: LocationItem(arguments: settings.arguments));
        } else {
          return CustomRouter(page: CharactersScreen());
        }
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         brightness: Brightness.dark,
//       ),
//       title: 'Rick and Morty',
//       //initialRoute: '/',
//       home: HomeScreen(),
//
//       onGenerateRoute: (settings) {
//         if (settings.name == '/characters') {
//           return CustomRouter(page: CharactersScreen());
//         } else if (settings.name == '/locations') {
//           return CustomRouter(page: LocationsScreen());
//         } else if (settings.name == '/episodes') {
//           return CustomRouter(page: EpisodesScreen());
//         } else if (settings.name == '/settings') {
//           return CustomRouter(page: SettingsScreen());
//         } else if (settings.name == '/characterProfile') {
//           //  print(settings.arguments);
//           return CustomRouter(
//               page: CharacterProfile(arguments: settings.arguments));
//         } else if (settings.name == '/episodeItem') {
//           //print(settings.arguments);
//           return CustomRouter(page: EpisodeItem(arguments: settings.arguments));
//         } else if (settings.name == '/locationItem') {
//           //  print(settings.arguments);
//           return CustomRouter(
//               page: LocationItem(arguments: settings.arguments));
//         } else {
//           return CustomRouter(page: CharactersScreen());
//         }
//       },
//     );
//   }
// }
