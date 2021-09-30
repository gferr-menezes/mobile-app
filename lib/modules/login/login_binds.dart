import 'package:cade_moto_app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinds implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(loginService: Get.find()),
    );
  }
}
