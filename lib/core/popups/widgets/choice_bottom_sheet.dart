import 'package:flutter/material.dart';
// import 'package:patientrecordmanagementapp/core/popups/choice_dialog.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
import 'package:patientrecordmanagementapp/core/widgets/button.dart';

/// This widget is specific for the [ModelBottomSheet].
/// This will be used when an action is required to be done on a response.
/// For displaying simple error and success messages on response, use [ChoiceDialog],
/// in [showDialog]
class ChoiceBottomSheet extends StatelessWidget {
  const ChoiceBottomSheet(
      {super.key,
      this.title = 'Validation',
      this.message = 'You have processed less quantity than requested',
      this.firstChoice = 'Create Back Order',
      this.secondChoice = 'No Back Order',
      this.firstOnPressed,
      this.secondOnPressed,
      this.isFirstLoading = false,
      this.isSecondLoading = false});

  final String title;
  final String message;
  final String firstChoice;
  final String secondChoice;
  final Future Function()? firstOnPressed;
  final Future  Function()? secondOnPressed;
  final bool isFirstLoading;
  final bool isSecondLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          sizeFieldSmallPlaceHolder,
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          sizeFieldLargePlaceHolder,
          ButtonWidget(
              text: firstChoice,
              buttonType: ButtonType.fill,
              onPressed: ()async=>firstOnPressed,
              // isLoading: isFirstLoading
          ),
          sizeFieldSmallPlaceHolder,
          ButtonWidget(
              text: secondChoice,
              buttonType: ButtonType.transparent,
              onPressed: ()async=>secondOnPressed,)
              // isLoading: isSecondLoading),
          // sizePageBottomPlaceHolder,
        ],
      ),
    );
  }
}
