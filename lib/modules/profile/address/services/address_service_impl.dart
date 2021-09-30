import 'package:cade_moto_app/modules/externalQueries/models/city_model.dart';
import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';
import 'package:cade_moto_app/modules/profile/address/repositories/address_repository.dart';

import './address_service.dart';

class AddressServiceImpl implements AddressService {
  AddressRepository _addressRepository;
  AddressServiceImpl({
    required AddressRepository addressRepository,
  }) : _addressRepository = addressRepository;

  @override
  Future<List<StateModel>> queryStates() async =>
      await _addressRepository.queryStates();

  @override
  Future<List<CityModel>> queryCities(
          List<StateModel> states, String state) async =>
      await _addressRepository.queryCities(states, state);
}
