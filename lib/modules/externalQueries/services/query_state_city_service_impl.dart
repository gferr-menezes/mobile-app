import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';
import 'package:cade_moto_app/modules/externalQueries/repositories/query_state_city_repository_impl.dart';
import 'package:cade_moto_app/modules/externalQueries/services/query_state_city_service.dart';

class QueryStateCityServiceImpl implements QueryStateCityService {
  final repository = QueryStateCityRepositoryImpl();

  @override
  Future<List<StateModel>> getStates() async => repository.getStates();

  @override
  Future<List<CityModel>> getCities(
      List<StateModel> states, String state) async {
    final stateAbbreviation = this.getStateAbbreviation(states, state);
    return await repository.getCities(stateAbbreviation);
  }

  @override
  String getStateAbbreviation(List<StateModel> states, String state) {
    var result = states
        .where((element) => element.label.toLowerCase() == state.toLowerCase())
        .toList();

    var stateAbbreviation;

    result.forEach((element) => stateAbbreviation = element.value);

    return stateAbbreviation.toString().toLowerCase();
  }
}
