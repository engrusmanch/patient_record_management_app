import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/constants/strings.dart';

class CustomError {
  IconData iconData;
  String title;
  String? message;
  String stackTrace;

  CustomError(
      {required this.iconData,
        required this.title,
        required this.message,
        required this.stackTrace});
}

class GeneralError extends CustomError {
  GeneralError(
      {super.iconData = Icons.dangerous_rounded,
        super.title = defaultGeneralErrorTitle,
        super.message = defaultGeneralErrorMessage,
        super.stackTrace = emptyString});
}

///This error is thrown when user enters in application and
///if client id is expired,disabled by admin,or have'nt paid,


// class NetworkError extends CustomError {
//   NetworkError(
//       {super.iconData =  Icons.signal_wifi_connected_no_internet_4_outlined,
//         super.title = defaultNetworkErrorTitle,
//         super.message = defaultNetworkErrorMessage,
//         super.stackTrace = emptyString});
// }
