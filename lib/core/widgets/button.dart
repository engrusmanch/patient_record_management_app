import 'package:flutter/material.dart';

/// Widget that renders a [Button] with transparent or fill background
/// Exposes [onPressed] function
class ButtonWidget extends StatefulWidget {
  final Future<void>? Function() onPressed;
  final String text;
  final TextStyle? textStyle;
  final Color? borderColor;
  final EdgeInsetsGeometry margin;
  // final bool isLoading;
  final ButtonType buttonType;
  final Icon? icon;
  final Color? buttonColor;
  final double height;
  final double? width;
  final double radius;
  final bool expand;

  ButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.textStyle,
      this.borderColor,
      this.margin = EdgeInsets.zero,
      required this.buttonType,
      // this.isLoading = false,
      this.icon,
      this.width,
        this.buttonColor,
      this.expand = true,
      this.radius = 4.0,
      this.height = 45.0})
      : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
   bool loading=false;

  @override
  Widget build(BuildContext context) {
    print("Button loading:$loading");
    final buttonStyle = ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all(getBackgroundColor(context, widget.buttonColor)),
        foregroundColor: MaterialStateProperty.all(getForegroundColor(context,widget.buttonColor)),
        side: MaterialStateProperty.all(
          BorderSide(
              color:
                  widget.borderColor ?? Theme.of(context).colorScheme.outlineVariant),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(widget.radius),
        )));

    return Container(
      key: widget.key,
        height: widget.height,
        margin: widget.margin,
        width: widget.width ?? (widget.expand ? double.infinity : null),
        child: ElevatedButton.icon(
          icon: widget.icon ?? const SizedBox(),
          style: buttonStyle,
          onPressed: () async {


              setState(() {
                loading = true;
              });

              try {
                await widget.onPressed();
              } finally {
                if (mounted) {
                  setState(() {
                    loading = false;
                  });
                }
              }

          },
          label: !loading
              ? Text(
                  widget.text,
                  style: widget.textStyle,
                  textAlign: TextAlign.center,
                )
              : SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: CircularProgressIndicator(
                    color: getProgressIndicatorColor(context),
                  ),
                ),
        ));
  }

  getForegroundColor(BuildContext context, Color? buttonColor) {
    return widget.buttonType == ButtonType.fill
        ? Colors.white
        : buttonColor == null
            ? Theme.of(context).colorScheme.primary
            : buttonColor;
  }

  getBackgroundColor(BuildContext context, Color? buttonColor) {
    return widget.buttonType == ButtonType.transparent
        ? Colors.transparent
        : widget.buttonType == ButtonType.fill
            ? buttonColor == null
                ? Theme.of(context).colorScheme.primary
                : buttonColor
            : Colors.white;
  }

  getProgressIndicatorColor(BuildContext context) {
    return widget.buttonType == ButtonType.fill
        ? Colors.white
        : Theme.of(context).colorScheme.primary;
  }
}

class CardButton extends StatelessWidget {
  const CardButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final String text;
  final Future Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      expand: false,
      icon: Icon(icon),
      text: text,
      buttonType: ButtonType.white,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
      radius: 10.0,
      height: 41.0,
      onPressed: onPressed,
    );
  }
}

enum ButtonType { transparent, fill, white }
