import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/error/error.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
import 'package:patientrecordmanagementapp/core/widgets/button.dart';

class CustomErrorWidget extends StatelessWidget {
  final Future Function()? reStart;
  final CustomError? customError;
  final Icon? icon;
  final String? text;
  const CustomErrorWidget({
    super.key,
    required this.customError,
    this.icon,
    this.text,
    this.reStart,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              customError!.iconData,
              size: 100.0,
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            ),
            sizeFieldLargePlaceHolder,
            Text(
              maxLines: 5,
              customError!.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            sizeFieldMediumPlaceHolder,
            Text(
              maxLines: 5,
              customError!.message!,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            sizeFieldLargePlaceHolder,
            if (reStart != null)
              ButtonWidget(
                height: 50,
                width: 280,
                margin: EdgeInsets.all(16),
                text: text ?? 'Refresh',
                expand: true,
                buttonType: ButtonType.fill,
                radius: 10.0,
                icon: icon,
                onPressed: ()async=>reStart,
                textStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              )
          ],
        ),
      ),
    );
  }
}
