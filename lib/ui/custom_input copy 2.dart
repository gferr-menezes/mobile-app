//import 'package:cade_moto_app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final Icon? icon;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? mask;

  const CustomInput({
    required this.label,
    this.icon,
    this.controller,
    this.validator,
    this.textInputType,
    this.mask,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      validator: validator,
      inputFormatters: mask ?? [],
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.green),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey.shade500),
        ),
        hintStyle: TextStyle(
            // color: context.colorText,
            ),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(5),
        ),
        icon: icon,
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 20,
        ),
      ),
    );
  }
}
