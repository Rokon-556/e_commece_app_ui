import 'package:ecommerce_pages/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class DialogHelper {
  static showAlertDialog(context) =>
      showDialog(context: context, builder: (context) => CustomDialog());
}
