import 'package:cade_moto_app/application/modules/module.dart';
import 'package:cade_moto_app/modules/profile/address/pages/address_data_page.dart';
import 'package:cade_moto_app/modules/profile/home/pages/home_profile_page.dart.dart';
import 'package:cade_moto_app/modules/profile/personal-data/pages/personal_data_page.dart';
import 'package:cade_moto_app/modules/profile/profile_binds.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ProfileModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      binding: ProfileBinds(),
      name: '/profile',
      page: () => HomeProfilePage(),
    ),
    GetPage(
      binding: ProfileBinds(),
      name: '/personal-data',
      page: () => PersonalDataPage(),
    ),
    GetPage(
      binding: ProfileBinds(),
      name: '/address-data',
      page: () => AddressDataPage(),
    )
  ];
}
