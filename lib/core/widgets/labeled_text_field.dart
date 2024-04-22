import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
import 'package:patientrecordmanagementapp/core/styles/styles.dart';



class LabeledTextField<T> extends StatelessWidget {
  const LabeledTextField(
      {Key? key,
      required this.label,
      required this.fontSize,
      this.fontWeight = FontWeight.bold,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      required this.textField})
      : super(key: key);
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final Widget textField;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: textField),
    );
  }
}
