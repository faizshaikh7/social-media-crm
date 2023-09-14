import 'package:flutter/material.dart';
import 'package:social_media_helper/utils/colors.dart';

final CustomWidgets customWidgets = CustomWidgets();

class CustomWidgets {
  // SNACKBAR START
  showSnackbar(BuildContext context, String textContent) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: titleTextColor,
        margin: const EdgeInsets.all(15),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: Text(textContent),
      ),
    );
  }
  // SNACKBAR END
}
