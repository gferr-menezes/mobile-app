import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';
import 'package:dio/dio.dart';

import './query_state_city_repository.dart';

class QueryStateCityRepositoryImpl implements QueryStateCityRepository {
  var http = Dio();

  @override
  Future<List<StateModel>> getStates() async {
    Response response = await http
        .get('https://servicodados.ibge.gov.br/api/v1/localidades/estados');

    var result = (response.data as List)
        .map((state) => StateModel.fromMap(state))
        .toList();

    return result;
  }

  @override
  Future<List<CityModel>> getCities(String state) async {
    final String url =
        'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$state/microrregioes?orderBy=nome';

    print(url);

    Response response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Erro ao consultat api de cidades');
    }

    var result =
        (response.data as List).map((city) => CityModel.fromMap(city)).toList();

    return result;
  }
}
