import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';

abstract class AddressService {
  Future<List<StateModel>> queryStates();
  Future<List<CityModel>> queryCities(List<StateModel> states, String state);
}
