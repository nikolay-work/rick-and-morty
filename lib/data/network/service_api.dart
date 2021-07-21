import 'package:dio/dio.dart';
import 'package:forth_flutter/data/network/dio_settings.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';

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

  /// Название запроса
  Future<List<Datum>> getCharacters() async {
    Response<String> response = await _dio.get(
      "api/Characters/GetAll?PageNumber=1&PageSize=100",
    );
    return charactersModelFromJson(response.toString()).data;
  }
}
