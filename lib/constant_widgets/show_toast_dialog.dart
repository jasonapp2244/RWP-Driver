// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToastDialog {
  static void showToast(String? message,
      {EasyLoadingToastPosition position = EasyLoadingToastPosition.top}) {
    EasyLoading.showToast(message!, toastPosition: position);
  }

  static void showLoader(String message) {
    EasyLoading.show(status: message);
  }

  static void closeLoader() {
    EasyLoading.dismiss();
  }


static void toast(
  String? value, {
    ToastGravity? gravity,
    length = Toast.LENGTH_SHORT,
    Color bgColor = const Color(0xFF1C354B),
    Color textColor = const Color(0xFFFFFFFF), // white text
    bool log = false,
  }) {
    if (value == null || value.isEmpty) return;

    Fluttertoast.showToast(
      msg: value,
      gravity: gravity,
      toastLength: length,
      backgroundColor: bgColor,
      textColor: textColor,
    );
  }
}

  // static void toast(
  //   String? value, {
  //   ToastGravity? gravity,
  //   length = Toast.LENGTH_SHORT,
  //   Color bgColor = const Color(0xFF1C354B),
  //   Color textColor = const Color(0xFF1C354B),
  //   bool log = false,
  // }) {
  //   if (value!.isEmpty) {
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: value,
  //       gravity: gravity,
  //       toastLength: length,
  //       backgroundColor: bgColor,
  //       textColor: textColor,
  //     );
  //   }
  // }
//}
