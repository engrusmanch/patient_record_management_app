import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';

showSnackBar(BuildContext context,
    {String message = 'Loading', int milliseconds = 900}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        const Icon(
          Icons.front_hand_outlined,
          color: Colors.white,
        ),
        sizeHorizontalFieldMinPlaceHolder,
        Flexible(
          child: Text(
            message,
          ),
        ),
      ],
    ),
    duration: Duration(milliseconds: milliseconds),
  ));
}

removeAllSnackBars(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
}

hideCurrentSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
}
