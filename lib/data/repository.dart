import 'network/models/characters_model.dart';
import 'network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  // Получение списка персонажей
  Future<List<Datum>> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }
}
