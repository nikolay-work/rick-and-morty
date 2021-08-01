import 'package:forth_flutter/data/network/models/character_model.dart';

import 'network/models/characters_model.dart';
import 'network/models/episodes_model.dart';
import 'network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  // Получение списка персонажей
  Future<List<CharactersDatum>> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }

  // Получение списка эпизодов
  Future<List<EpisodesDatum>> getEpisodes() async {
    final response = await _serviceApi.getEpisodes();
    return response;
  }

  // Получение персонажа
  Future<CharacterData> getCharacter(String id) async {
    final response = await _serviceApi.getCharacter(id);
    return response;
  }
}
