import 'package:cade_moto_app/application/modules/module.dart';
import 'package:cade_moto_app/modules/home/home_binds.dart';
import 'package:cade_moto_app/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      binding: HomeBinds(),
      name: '/home',
      page: () => HomePage(),
    )
  ];
}
