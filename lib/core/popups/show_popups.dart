import 'package:flutter/material.dart';

import 'package:patientrecordmanagementapp/core/constants/strings.dart';
import 'package:patientrecordmanagementapp/core/enums.dart';
import 'package:patientrecordmanagementapp/core/error/error.dart';
import 'package:patientrecordmanagementapp/core/popups/widgets/choice_bottom_sheet.dart';
import 'package:patientrecordmanagementapp/core/popups/widgets/choice_dialog.dart';
import 'package:patientrecordmanagementapp/core/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:patientrecordmanagementapp/presentation/add_edit_record.dart';

Future<bool?> showBackOrderSheet(
    BuildContext context,
    int id,
    Future Function(int) firstOnPressed,
    Future Function(int)? secondOnPressed) {
  return showModalBottomSheet<bool>(
      context: context,
      isDismissible: false,
      // enableDrag: false,
      builder: (modalContext) {
        bool isFirstLoading = false;
        bool isSecondLoading = false;

        return StatefulBuilder(builder: (context, setState) {
          return ChoiceBottomSheet(
              key: UniqueKey(),
              firstChoice: "AppLiterals.backOrderButtonText",
              isFirstLoading: isFirstLoading,
              secondChoice: "AppLiterals.noBackOrderButtonText",
              isSecondLoading: isSecondLoading,
              firstOnPressed: () async {
                setState(() {
                  isFirstLoading = true;
                });
                await firstOnPressed(id).then((value) {
                  setState(() {
                    isFirstLoading = false;
                  });
                  showDialog(
                      context: modalContext,
                      builder: (dialogContext) => ChoiceDialog(
                            message: 'Back Order Created.',
                            firstChoice: "AppLiterals.okButtonText",
                            firstOnPressed: ()async =>
                                Navigator.of(context, rootNavigator: true)
                                  ..pop()
                                  ..pop()
                                  ..pop(true),
                          ));
                }).onError<CustomError>((error, stackTrace) {
                  setState(() {
                    isFirstLoading = false;
                  });
                  logError('Create Back Order', error);
                  // showErrorDialog(context, error, onPressed: () {
                  //   Navigator.of(context)
                  //     ..pop()
                  //     ..pop(false);
                  // });
                });
              },
              secondOnPressed: () async{
                setState(() {
                  isSecondLoading = true;
                });
                secondOnPressed!(id).then((value) {
                  setState(() {
                    isSecondLoading = false;
                  });
                  Navigator.of(context)
                    ..pop()
                    ..pop(true);
                  // ..pop();
                }).onError<CustomError>((error, stackTrace) async {
                  setState(() {
                    isSecondLoading = false;
                  });
                  logError('No Back Order', error);
                  // await showErrorDialog(context, error, onPressed: () {
                  //   Navigator.of(context)
                  //     ..pop()
                  //     ..pop(false);
                  // });
                });
              });
        });
      });
}

Future<bool?> showZeroDoneSheet(
    BuildContext context, int id, Future Function(int) firstOnPressed) {
  bool isFirstLoading = false;
  return showModalBottomSheet<bool>(
      context: context,
      isDismissible: false,
      builder: (modalContext) => StatefulBuilder(builder: (context, setState) {
            return ChoiceBottomSheet(
                firstChoice: "AppLiterals.applyButtonText",
                isFirstLoading: isFirstLoading,
                secondChoice: "AppLiterals.cancelButtonText",
                message:
                    'You have not recorded done quantities yet, by clicking on apply Odoo will process all the quantities.',
                firstOnPressed: () async {
                  setState(() {
                    isFirstLoading = true;
                  });
                  firstOnPressed(id).then((value) async {
                    setState(() {
                      isFirstLoading = false;
                    });

                    showDialog(
                        context: modalContext,
                        builder: (dialogContext) => ChoiceDialog(
                            title: "AppLiterals.successTitle",
                            message: "AppLiterals.stockValidatedText",
                            firstChoice: "AppLiterals.okButtonText",
                            firstOnPressed: ()async =>
                                Navigator.of(context, rootNavigator: true)
                                  ..pop()
                                  ..pop()
                                  ..pop(true)));
                  }).onError<CustomError>((error, stackTrace) {
                    setState(() {
                      isFirstLoading = false;
                    });
                    logError('Create Back Order', error);

                    // showErrorDialog(context, error, onPressed: () {
                    //   Navigator.of(context)
                    //     ..pop()
                    //     ..pop(false);
                    // });
                  });
                },
                secondOnPressed: ()async {
                  Navigator.pop(context, true);
                });
          }));
}

Future<void> showProductNotFoundPopUp(
    BuildContext context, Function() secondOnPressed) {
  return ((showDialog(
      context: context,
      // The context of this builder is not needed
      // Even to pop this dialog, the context of this builder is not needed.
      builder: (_) => ChoiceDialog(
            title: "AppLiterals.productNotFoundTitle",
            message: "AppLiterals.productNotFoundMessage",
            firstChoice: "AppLiterals.createProductButtonText",
            firstOnPressed: () {
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (_) => AddEditProductPage(
              //               opType: OperationType.add,
              //             )));
              // Get.delete<InventoryController>();
            },
            secondChoice: 'Scan Again',
            secondOnPressed: () {
              secondOnPressed();

              /// Closing the current dialog.
              Navigator.pop(context);
            },
          ))));
}

// Future<void> showErrorDialog(BuildContext context, CustomError? error,
//     {Function()? onPressed}) {
//   return showDialog(
//       context: context,
//       barrierDismissible: false,
//       useSafeArea: true,
//       builder: (buildContext) => ChoiceDialog(
//           title: error!.title,
//           message: (kDebugMode)
//               ? '${error.message!} \n\n File: ${getFileWithError(error.stackTrace)}'
//               : '',
//           firstChoice: AppLiterals.okButtonText,
//           firstOnPressed: () {
//             if (onPressed != null) {
//               onPressed();
//             } else {
//               Navigator.pop(context);
//             }
//           }));
// }

Future<void> showCreatedDialog(BuildContext context,
    {
    required String name,
    required int id,
    Function()? onPressed}) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: true,
      builder: (buildContext) => ChoiceDialog(
          title: "AppLiterals.successTitle",
          message: "",
          firstChoice:" AppLiterals.okButtonText",
          firstOnPressed: () {
            if (onPressed != null) {
              onPressed();
            } else {
              Navigator.of(context)
                ..pop()
                ..pop();
            }
          }));
}
