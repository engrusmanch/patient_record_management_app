import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final void Function(String)? onChanged; // New onChanged property
  final String? Function(String?)? validator;
  const PasswordField({
    Key? key,
    this.validator,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
      hintText: widget.hintText,
      labelText: widget.labelText,
      obscureText: _obscureText,
      validator: widget.validator,
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator; // New validator property
  final Widget? suffixIcon;
  final bool? obscureText;
  final int? maxLines;
  final void Function(String)? onChanged; // New onChanged property
  final String? initialValue;
  const CustomTextField({
    this.labelText,
    this.hintText,
    this.validator,
    this.suffixIcon,
    this.obscureText,
    this.initialValue,
    this.maxLines,
    this.onChanged, // Pass the onChanged through the constructor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: obscureText == true ? 1 : maxLines,
      initialValue: initialValue,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: Theme.of(context).textTheme.bodyLarge,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      onChanged: onChanged, // Assign the onChanged from the widget's property
    );
  }
}
