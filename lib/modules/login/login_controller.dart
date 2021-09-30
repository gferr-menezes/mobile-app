import 'package:cade_moto_app/services/login/login_service.dart';
import 'package:cade_moto_app/ui/my_dialogs.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginService _loginService;

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onReady() async {
    super.onReady();

    //await Future.delayed(Duration(seconds: 5));

    // Get.offAllNamed('/home');
  }

  checkLogin() async {
    Get.dialog(MyDialogs.loadingDialog());
    await _loginService.login();

    Get.offAllNamed('/home');
  }
}
