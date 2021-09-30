import 'package:cade_moto_app/application/modules/module.dart';
import 'package:cade_moto_app/modules/login/login_binds.dart';
import 'package:cade_moto_app/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule extends Module {
  @override
  List<GetPage> routes = [
    GetPage(
      binding: LoginBinds(),
      name: '/login',
      page: () => const LoginPage(),
    )
  ];
}
