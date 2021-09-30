import 'package:cade_moto_app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinds implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
