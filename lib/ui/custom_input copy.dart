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
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 0,
      ),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        validator: validator,
        inputFormatters: mask ?? [],
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.green,
          ),
          icon: icon,
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
