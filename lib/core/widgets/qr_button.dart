import 'package:flutter/material.dart';


class QrIconButton extends StatelessWidget {
  const QrIconButton(
      {Key? key,
      required this.onTap,
      this.height = 48.0,
      this.width = 48.0,
        this.size=35.0,
      this.disabled = false})
      : super(key: key);

  final Function() onTap;
  final double height;
  final double size;
  final double width;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final borderColor = disabled ? Colors.grey : Theme.of(context).colorScheme.primary;
    return InkWell(
      onTap: disabled ? null : onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(color: borderColor),
                left: BorderSide(color: borderColor),
                top: BorderSide(color: borderColor),
                bottom: BorderSide(color: borderColor))),
        padding: const EdgeInsets.all(0.0),
        child: Icon(
          Icons.qr_code_2_outlined,
          size: size,
          color: borderColor,
        ),
      ),
    );
  }
}
