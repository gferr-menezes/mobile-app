import 'package:cade_moto_app/modules/profile/home/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuList extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    final pageWidth = Get.width;
    final pageHeight = controller.pageHeight - 4;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: pageWidth,
            minHeight: pageHeight,
          ),
          child: SingleChildScrollView(
            child: Container(
              width: pageWidth,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 0, top: 5),
                    width: pageWidth,
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/personal-data');
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.person,
                                    color: Colors.grey.shade500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Dados Pessoais',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.white,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    height: 0.8,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: pageWidth,
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/address-data');
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.house,
                                    color: Colors.grey.shade500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Endereço',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: pageWidth,
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.supervised_user_circle_sharp,
                                    color: Colors.grey.shade500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Dados de Acesso',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: pageWidth,
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.local_hospital,
                                    color: Colors.grey.shade500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Contato de Emergência',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
