import 'package:cade_moto_app/modules/profile/address/repositories/address_repository.dart';
import 'package:cade_moto_app/modules/profile/address/repositories/address_repository_impl.dart';
import 'package:cade_moto_app/modules/profile/address/services/address_service.dart';
import 'package:cade_moto_app/modules/profile/address/services/address_service_impl.dart';
import 'package:get/get.dart';
import './personal-data/controllers/personal_data_controller.dart';
import './address/controllers/address_data_controller.dart';
import './home/controllers/profile_controller.dart';

class ProfileBinds implements Bindings {
  @override
  void dependencies() {
    Get.put<AddressRepository>(AddressRepositoryImpl());
    Get.put<AddressService>(AddressServiceImpl(addressRepository: Get.find()));
    Get.put(ProfileController());
    Get.put(PersonalDataController());
    Get.put(AddressDataController(addressService: Get.find()));
  }
}
