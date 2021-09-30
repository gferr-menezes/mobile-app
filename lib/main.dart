import 'package:cade_moto_app/application/bindings/application_bindings.dart';
import 'package:cade_moto_app/modules/home/home_module.dart';
import 'package:cade_moto_app/modules/login/login_module.dart';
import 'package:cade_moto_app/modules/profile/profile_module.dart';
import 'package:cade_moto_app/ui/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ApplicationBindings(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      title: 'Cade Moto',
      theme: UiConfig.theme(),
      /*
      theme: ThemeData(
        primaryColor: Colors.green.shade400,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      */
      getPages: [
        ...LoginModule().routes,
        ...HomeModule().routes,
        ...ProfileModule().routes,
      ],
    );
  }
}
