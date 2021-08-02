import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:forth_flutter/data/network/dio_settings.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';

import 'models/episode_model.dart';
import 'models/episodes_model.dart';
import 'models/locations_model.dart';

class ServiceApi {
  DioSettings _dioSettings;
  Dio _dio;

  /// И мап для запроса
  Map<String, dynamic> _request;

  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;
  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  /// Запрос списка всех персонажей
  Future<List<CharactersDatum>> getCharacters() async {
    Response<String> response = await _dio.get(
      "api/Characters/GetAll?PageNumber=1&PageSize=100",
    );
    return charactersModelFromJson(response.toString()).data;
  }

  /// Запрос списка всех эпизодов
  Future<List<EpisodesDatum>> getEpisodes() async {
    Response<String> response = await _dio.get(
      "api/Episodes/GetAll?PageNumber=1&PageSize=100",
    );
    return episodesModelFromJson(response.toString()).data;
  }

  /// Запрос списка всех локаций
  Future<List<LocationsDatum>> getLocations() async {
    Response<String> response = await _dio.get(
      "api/Locations/GetAll?PageNumber=1&PageSize=100",
    );
    return locaModelFromJson(response.toString()).data;
  }

  /// Запрос списка данных по персонажу
  Future<CharacterData> getCharacter(String id) async {
    Response<String> response = await _dio.get(
      "api/Characters/GetById?Id=$id",
    );
    return characterModelFromJson(response.toString()).data;
  }

  /// Запрос списка данных по эпизоду
  Future<EpisodeData> getEpisode(String id) async {
    Response<String> response = await _dio.get(
      "api/Episodes/GetById?Id=$id",
    );
    return episodeModelFromJson(response.toString()).data;
  }
}
