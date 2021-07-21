import 'package:forth_flutter/data/network/models/episode.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';
import 'package:forth_flutter/screens/character_profile/view_model.dart';
import 'package:forth_flutter/screens/episode_item/view_model.dart';
import 'package:forth_flutter/screens/episodes/view_model.dart';
import 'package:forth_flutter/screens/location_item/view_model.dart';
import 'package:forth_flutter/screens/locations/view_model.dart';
import 'images.dart';

List<CharacterModel> charactersList = [
  CharacterModel(1, 'Рик Cанчез', true, true, 'Человек', Images.character1),
  CharacterModel(
      2, 'Директор Агентства', true, true, 'Человек', Images.character2),
  CharacterModel(3, 'Морти Смит', true, true, 'Человек', Images.character3),
  CharacterModel(4, 'Саммер Смит', true, true, 'Человек', Images.character4),
  CharacterModel(
      5, 'Альберт Эйнштейн', false, true, 'Человек', Images.character5),
  CharacterModel(6, 'Алан Райлс', false, true, 'Человек', Images.character6),
];

String characterAbout =
    'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.';

List<CharacterProfileModel> characterDataList = [
  CharacterProfileModel(1, 'Рик Cанчез', true, true, characterAbout, 'Человек',
      'Земля C-137', Images.character1),
  CharacterProfileModel(2, 'Директор Агентства', true, true, characterAbout,
      'Человек', 'Земля C-137', Images.character2),
  CharacterProfileModel(3, 'Морти Смит', true, true, characterAbout, 'Человек',
      'Земля C-137', Images.character3),
  CharacterProfileModel(4, 'Саммер Смит', true, true, characterAbout, 'Человек',
      'Земля C-137', Images.character4),
  CharacterProfileModel(5, 'Альберт Эйнштейн', false, true, characterAbout,
      'Человек', 'Земля C-137', Images.character5),
  CharacterProfileModel(6, 'Алан Райлс', false, true, characterAbout, 'Человек',
      'Земля C-137', Images.character6),
];

List<EpisodeModel> episodesList = [
  EpisodeModel(1, 'Пилот', 1, '2 декабря 2013', Images.film1),
  EpisodeModel(2, 'Пёс-газонокосильщик', 2, '9 декабря 2013', Images.film2),
  EpisodeModel(3, 'Анатомический парк', 3, '16 декабря 2013', Images.film3),
  EpisodeModel(4, 'М. Найт Шьямал-Инопланетяне!', 4, '13 января 2014 года',
      Images.film4),
  EpisodeModel(5, 'Мисикс и разрушение', 5, '20 января 2014', Images.film5),
  EpisodeModel(6, 'Напиток Рика №9', 6, '20 января 2014', Images.film6),
  EpisodeModel(7, 'Воспитание Газорпазорпа', 7, '20 января 2014', Images.film7),
];

String episodeDescription =
    'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.';

List<EpisodeItemModel> episodesItemList = [
  EpisodeItemModel(
      1, 'Пилот', episodeDescription, 1, '2 декабря 2013', Images.film1),
  EpisodeItemModel(2, 'Пёс-газонокосильщик', episodeDescription, 2,
      '9 декабря 2013', Images.film2),
  EpisodeItemModel(3, 'Анатомический парк', episodeDescription, 3,
      '16 декабря 2013', Images.film3),
  EpisodeItemModel(4, 'М. Найт Шьямал-Инопланетяне!', episodeDescription, 4,
      '13 января 2014 года', Images.film4),
  EpisodeItemModel(5, 'Мисикс и разрушение', episodeDescription, 5,
      '20 января 2014', Images.film5),
  EpisodeItemModel(6, 'Напиток Рика №9', episodeDescription, 6,
      '20 января 2014', Images.film6),
  EpisodeItemModel(7, 'Воспитание Газорпазорпа', episodeDescription, 7,
      '20 января 2014', Images.film7),
];

List<LocationModel> locationList = [
  LocationModel(1, 'Земля C-137', 'Измерение С-137', Images.location1),
  LocationModel(2, 'Анатомический парк', 'Измерение С-137', Images.location2),
  LocationModel(3, 'Земля C-137', 'Измерение С-137', Images.location1),
];

String locationDescription =
    'Это планета, на которой проживает человеческая раса, и главное место для персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, и она является четвертой планетой от своей звезды.';

List<LocationItemModel> locationItemList = [
  LocationItemModel(1, 'Земля C-137', 'Измерение С-137', locationDescription,
      Images.location1),
  LocationItemModel(2, 'Анатомический парк', 'Измерение С-137',
      locationDescription, Images.location2),
  LocationItemModel(3, 'Земля C-137', 'Измерение С-137', locationDescription,
      Images.location1),
];

List<SeasonNameModel> seasonsNameList = [
  SeasonNameModel(
    1,
    'СЕЗОН 1',
  ),
  SeasonNameModel(
    2,
    'СЕЗОН 2',
  ),
  SeasonNameModel(
    3,
    'СЕЗОН 3',
  ),
  SeasonNameModel(
    4,
    'СЕЗОН 4',
  ),
  SeasonNameModel(
    5,
    'СЕЗОН 5',
  ),
];
