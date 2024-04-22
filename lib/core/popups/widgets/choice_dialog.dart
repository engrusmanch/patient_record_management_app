import 'dart:core';

import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/constants/strings.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
// import 'package:patientrecordmanagementapp/core/popups/choice_bottom_sheet.dart';
// import 'package:patientrecordmanagementapp/core/styles/place_holders.dart';

// import '../../styles/colors.dart';

/// This is built for displaying error and success messages based on the
/// API response, and if any action is to be performed based on a particular response,
/// then prefer using [ChoiceBottomSheet] in [showModalBottomSheet]
class ChoiceDialog extends StatelessWidget {
  const ChoiceDialog(
      {Key? key,
      this.title = titleText,
      this.message = messageText,
      this.firstChoice = yesText,
      this.secondChoice = noText,
      required this.firstOnPressed,
      this.secondOnPressed})
      : super(key: key);
  final String title;
  final String message;
  final String firstChoice;
  final String? secondChoice;
  final Function() firstOnPressed;
  final Function()? secondOnPressed;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: Border.all(width: 0.0),
      child: Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 0.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              sizeFieldSmallPlaceHolder,
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.titleMedium!.fontSize!,
                    fontWeight: FontWeight.bold),
              ),
              sizeFieldLargePlaceHolder,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(height: 1.4),
                ),
              ),
              sizeFieldLargePlaceHolder,
              SizedBox(
                height: 50.0,
                child: TextButton(
                  style: getButtonStyles(0,context),
                  onPressed: firstOnPressed,
                  child: Text(firstChoice),
                ),
              ),
              if (secondOnPressed != null)
                SizedBox(
                  height: 50.0,
                  child: TextButton(
                    style: getButtonStyles(1,context),
                    onPressed: secondOnPressed,
                    child: Text(secondChoice!),
                  ),
                ),
            ]),
      ),
    );
  }

  getButtonStyles(int index,BuildContext context) {
    return ButtonStyle(
        elevation: index == 0 ? MaterialStateProperty.all<double>(0) : null,
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
        textStyle: MaterialStateProperty.all(
            const TextStyle(fontWeight: FontWeight.bold)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))),
        side: index == 0
            ? MaterialStateProperty.all( BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ))
            : null);
  }
}
