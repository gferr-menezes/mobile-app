import 'package:cade_moto_app/modules/home/home_controller.dart';
import 'package:cade_moto_app/ui/my_bottom_navigator.dart';
import 'package:cade_moto_app/ui/my_drawer.dart';
import 'package:cade_moto_app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<ScaffoldState>();
    final titleAppBar = Text('Olá Guilherme', style: context.appBarTextStyle);

    return Scaffold(
      key: globalKey,
      drawer: MyDrawer(),
      appBar: AppBar(
        leading: TextButton(
          child: CircleAvatar(
            child: Image.network(
              'https://www.shareicon.net/data/2015/09/20/104335_avatar_512x512.png',
              fit: BoxFit.cover,
            ),
          ),
          onPressed: () => globalKey.currentState?.openDrawer(),
        ),
        title: titleAppBar,
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            color: Colors.blueGrey,
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(top: 10),
            width: Get.width,
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  elevation: 2,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          'Disponível',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Get.width * .42),
                        child: Text(
                          'On/Off',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Obx(
                        () => Switch(
                          activeColor: Colors.green,
                          value: controller.isAvailable.value,
                          onChanged: (bool value) {
                            controller.isAvailable.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: MyBottonNavigator(),
    );
  }
}
