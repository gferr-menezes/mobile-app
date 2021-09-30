import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';
import 'package:cade_moto_app/modules/externalQueries/services/query_state_city_service_impl.dart';

import './address_repository.dart';

class AddressRepositoryImpl implements AddressRepository {
  final queryStateCityService = QueryStateCityServiceImpl();

  @override
  Future<List<StateModel>> queryStates() => queryStateCityService.getStates();

  @override
  Future<List<CityModel>> queryCities(
          List<StateModel> states, String state) async =>
      await queryStateCityService.getCities(states, state);
}
