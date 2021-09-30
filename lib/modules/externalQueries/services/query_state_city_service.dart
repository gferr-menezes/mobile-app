import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';

abstract class QueryStateCityService {
  Future<List<StateModel>> getStates();
  Future<List<CityModel>> getCities(List<StateModel> states, String state);
  String getStateAbbreviation(List<StateModel> states, String state);
}
