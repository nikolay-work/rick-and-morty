import 'package:forth_flutter/data/network/models/character_model.dart';

import 'network/models/characters_model.dart';
import 'network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  // Получение списка персонажей
  Future<List<CharactersDatum>> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }

  // Получение персонажа
  Future<CharacterData> getCharacter(String id) async {
    final response = await _serviceApi.getCharacter(id);
    return response;
  }
}
