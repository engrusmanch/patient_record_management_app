import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/styles/styles.dart';

class FormWrap extends StatelessWidget {
  const FormWrap({Key? key, required this.children, this.spacing})
      : super(key: key);

  final List<Widget> children;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: AppStyles.formsAlignment,
      runSpacing: AppStyles.formsRunSpacing,
      spacing: spacing ?? 15.0,
      children: children,
    );
  }
}
