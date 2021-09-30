import 'package:cade_moto_app/modules/profile/home/controllers/profile_controller.dart';
import 'package:cade_moto_app/modules/profile/widgets/menu_list.dart';
import 'package:cade_moto_app/ui/custom_app_bar.dart';
import 'package:cade_moto_app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    final titleAppBar = Text('Meus Dados', style: context.appBarTextStyle);

    controller.appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    controller.pageHeight =
        Get.height - controller.appBarHeight - statusBarHeight;

    return Scaffold(
      appBar: CustomAppBar(
        title: titleAppBar,
        centerTitle: false,
      ),
      body: MenuList(),
    );
  }
}
