import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/constants/strings.dart';
import 'package:patientrecordmanagementapp/core/popups/show_snackbar.dart';

enum LoadingTapType {
  purchaseOrder,
  internalTransfer,
  inventoryAdjustment,
  stockIn,
  stockOut,
  inventory,
  vendor,
  note,
  filter,
  auth
}

class LoadingTapDetector extends StatelessWidget {
  const LoadingTapDetector(
      {Key? key,
      required this.child,
      this.loadingTapType,
      this.isCreating = true,
      this.isDeleting = false,
      required this.isLoading})
      : super(key: key);

  final bool? isDeleting;
  final bool isCreating;
  final bool isLoading;
  final Widget child;
  final LoadingTapType? loadingTapType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading
          ? () {
              showSnackBar(context, message: message);
            }
          : null,
      child: AbsorbPointer(absorbing: isLoading, child: child),
    );
  }

  String get message {
    if (loadingTapType != null) {
      switch (loadingTapType!) {
        case LoadingTapType.inventoryAdjustment:
          return isCreating
              ? "AppLiterals.creatingInventoryAdjustmentMessage"
              : "AppLiterals.updatingInventoryAdjustmentMessage";
        case LoadingTapType.purchaseOrder:
          return isCreating
              ? "AppLiterals.creatingPOMessage"
              :" AppLiterals.updatingPOMessage";
        case LoadingTapType.internalTransfer:
          return isCreating
              ? "AppLiterals.creatingITMessage"
              : "AppLiterals.updatingITMessage";
        case LoadingTapType.stockIn:
        case LoadingTapType.stockOut:
          return "AppLiterals.validatingStockMessage";
        case LoadingTapType.note:
          return isDeleting!
              ? "AppLiterals.noteDeletingMessage"
              : "AppLiterals.noteCreatingMessage";
        case LoadingTapType.inventory:
          return isCreating
              ? "Please wait product is being added"
              :"Please wait product is being updated";
        case LoadingTapType.vendor:
          return "AppLiterals.creatingVendorMessage";
        case LoadingTapType.filter:
          return "AppLiterals.filtersApplyingMessage";
        case LoadingTapType.auth:
          return" AppLiterals.authenticatingMessage";
      }
    }

    return "AppLiterals.lineProcessingMessage";
  }
}
