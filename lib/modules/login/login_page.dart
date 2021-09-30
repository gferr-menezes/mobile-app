import 'package:cade_moto_app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.grey.shade50,
            ]),
          ),
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              Image.asset('assets/images/image-login.jpg'),
              Container(
                padding: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1, top: 50, right: 1),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.green,
                              ),
                              isDense: true,
                              hintText: 'Informe o Email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                size: 30,
                                color: Colors.green,
                              ),
                              isDense: true,
                              hintText: 'Informe a Senha',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.checkLogin();
                            },
                            child: Text('EFETUAR LOGIN'),
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
