import 'package:forth_flutter/data/network/models/character_model.dart';

import 'network/models/characters_model.dart';
import 'network/models/episode_model.dart';
import 'network/models/episodes_model.dart';
import 'network/models/location_model.dart';
import 'network/models/locations_model.dart';
import 'network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  // Получение списка персонажей
  Future<List<CharactersDatum>> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }

  // Получение выборки персонажей
  Future<List<CharactersDatum>> getSearchCharacters(String text) async {
    final response = await _serviceApi.getSearchCharacters(text);
    return response;
  }

  // Получение списка эпизодов
  Future<List<EpisodesDatum>> getEpisodes() async {
    final response = await _serviceApi.getEpisodes();
    return response;
  }

  // Получение выборки эпизодов
  Future<List<EpisodesDatum>> getSearchEpisodes(String text) async {
    final response = await _serviceApi.getSearchEpisodes(text);
    return response;
  }

  // Получение списка локаций
  Future<List<LocationsDatum>> getLocations() async {
    final response = await _serviceApi.getLocations();
    return response;
  }

  // Получение выборки локаций
  Future<List<LocationsDatum>> getSearchLocations(String text) async {
    final response = await _serviceApi.getSearchLocations(text);
    return response;
  }

  // Получение персонажа
  Future<CharacterData> getCharacter(String id) async {
    final response = await _serviceApi.getCharacter(id);
    return response;
  }

  // Получение эпизода
  Future<EpisodeData> getEpisode(String id) async {
    final response = await _serviceApi.getEpisode(id);
    return response;
  }

  // Получение локации
  Future<LocationData> getLocation(String id) async {
    final response = await _serviceApi.getLocation(id);
    return response;
  }
}
