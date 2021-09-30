import 'package:cade_moto_app/modules/externalQueries/models/state_model.dart';
import 'package:cade_moto_app/modules/profile/address/services/address_service.dart';
import 'package:get/get.dart';

class AddressDataController extends GetxController {
  final AddressService _addressService;

  AddressDataController({required AddressService addressService})
      : _addressService = addressService;

  var statesForSelect = <String>[].obs;
  var citiesForSelect = <String>[].obs;
  var states = <StateModel>[];

  @override
  void onInit() {
    super.onInit();
    this.findStates();
  }

  var loadingStates = false.obs;

  Future<List<StateModel>> findStates() async {
    loadingStates.value = true;
    states = await _addressService.queryStates();
    loadingStates.value = false;
    states.map((state) {
      statesForSelect.add(state.label);
    }).toList();

    return states;
  }

  void onChangeState(String? stateSelected) async {
    if (stateSelected == null) return;
    citiesForSelect.value = [];

    final cities =
        await _addressService.queryCities(states, stateSelected.toLowerCase());
    cities.map((city) {
      citiesForSelect.add(city.label);
    }).toList();
  }

  void onChangeCity(String? city) {
    //print(city);
  }
}
