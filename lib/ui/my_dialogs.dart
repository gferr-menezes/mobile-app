import 'package:flutter/material.dart';

class MyDialogs extends Dialog {
  static Widget loadingDialog() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.green,
      ),
    );
  }
}
