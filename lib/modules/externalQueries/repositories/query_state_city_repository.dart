import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';

abstract class QueryStateCityRepository {
  Future<List<StateModel>> getStates();
  Future<List<CityModel>> getCities(String state);
}
