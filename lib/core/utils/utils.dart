import 'dart:developer';
import "dart:core";
import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/error/error.dart';

logError(String title, CustomError error) {
  log("<------------------------------ Inside [$title] ------------------------------>");

  log(error.title, error: error);
  log(error.message ?? '', error: error);

  log(error.stackTrace);
}


extension price on String {
  String get priceLabel => '${this} PKR';
}
