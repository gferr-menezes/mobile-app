import 'package:cade_moto_app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool? centerTitle;

  CustomAppBar({required this.title, this.centerTitle});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle == null ? true : false,
      backgroundColor: Color(0xffffffff),
      elevation: 1,
      iconTheme: IconThemeData(color: context.colorText),
    );
  }
}
