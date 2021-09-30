import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PersonalDataController extends GetxController {
  /// input controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController cnhController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void saveData() {
    // print(cpfController.text);
  }
}
