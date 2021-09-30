import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final Icon? icon;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? mask;
  final bool? isRequired;

  const CustomInput(
      {required this.label,
      this.icon,
      this.controller,
      this.validator,
      this.textInputType,
      this.mask,
      this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Colors.grey.shade300,
        ),
      )),
      child: Row(
        children: [
          SizedBox(
            width: 110,
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 90,
                  ),
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                isRequired != null && isRequired == true
                    ? Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          '*',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: TextFormField(
              textAlign: TextAlign.end,
              keyboardType: textInputType,
              controller: controller,
              validator: validator,
              inputFormatters: mask ?? [],
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                icon: icon,
              ),
            ),
          )
        ],
      ),
    );
  }
}
