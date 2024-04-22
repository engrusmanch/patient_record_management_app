import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/enums.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
import 'package:patientrecordmanagementapp/core/widgets/form_wrap.dart';
import 'package:patientrecordmanagementapp/core/widgets/loading_tap_detector.dart';
import 'package:patientrecordmanagementapp/core/enums.dart';

/// Screen that allows to edit the details of an existing [PurchaseOrder] or to add details for a new [PurchaseOrder]
/// Uses [CustomFilterChips], [DateSelectorWidget], [DropDownWidget], [ButtonWidget]
///
/// A [Purchase] can only be edited in [Draft] state.
class GenericForm extends StatelessWidget {
  const GenericForm(
      {Key? key,
      this.onWillPop,
      required this.isLoading,
      this.operationType,
      this.appBar,
      required this.formKey,
      required this.loadingTapType,
      this.bottomNavigationBar,
      this.margin,
      this.persistentFooterButtons,
      this.resizeToAvoidBottomInset,
      required this.builder})
      : super(key: key);

  final Future<bool> Function()? onWillPop;
  final bool isLoading;
  final OperationType? operationType;
  final PreferredSizeWidget? Function(BuildContext)? appBar;
  final Widget? Function(BuildContext)? bottomNavigationBar;
  final GlobalKey<FormState> formKey;
  final LoadingTapType loadingTapType;
  final Widget Function(BuildContext) builder;
  final List<Widget>? persistentFooterButtons;
  final EdgeInsetsGeometry? margin;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return ConditionalWillPopScope(
        onWillPop: onWillPop ?? () async => true,
        shouldAddCallback: isLoading,
        child: ScaffoldMessenger(
          child: Builder(builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
              appBar: appBar != null ? appBar!(context) : null,
              bottomNavigationBar: bottomNavigationBar != null
                  ? bottomNavigationBar!(context)
                  : null,
              body: Center(
                child: Form(
                  key: formKey,
                  child: Container(
                    margin: margin,
                    child: LoadingTapDetector(
                        loadingTapType: loadingTapType,
                        isLoading: isLoading,
                        child: builder(context)),
                  ),
                ),
              ),
              persistentFooterButtons: persistentFooterButtons,
            );
          }),
        ));
  }
}

/// This [Form] widget contains fields and buttons only.
/// If your [Form] implementation requires a design that
/// cannot be accomplished by this widget, then use
/// [GenericForm]
class ClassicForm extends StatelessWidget {
  const ClassicForm(
      {Key? key,
      this.onWillPop,
      required this.isLoading,
      this.operationType,
      this.appBar,
      required this.formKey,
      required this.loadingTapType,
      required this.children,
      this.spacing,
      this.bottomNavigationBar,
      this.margin,
      this.formTitle,
      this.bottomGap,
      this.topGap,
      this.formActions})
      : super(key: key);

  final Future<bool> Function()? onWillPop;
  final bool isLoading;
  final OperationType? operationType;
  final PreferredSizeWidget? Function(BuildContext)? appBar;
  final LoadingTapType loadingTapType;
  final double? spacing;
  final List<Widget> Function(BuildContext) children;
  final GlobalKey<FormState> formKey;
  final Widget? formActions;
  final Widget? Function(BuildContext)? bottomNavigationBar;
  final EdgeInsetsGeometry? margin;
  final Widget? formTitle;
  final SizedBox? bottomGap;
  final SizedBox? topGap;

  @override
  Widget build(BuildContext context) {
    return GenericForm(
      formKey: formKey,
      onWillPop: onWillPop,
      isLoading: isLoading,
      operationType: operationType,
      loadingTapType: loadingTapType,
      margin: margin,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      builder: (context) => Column(children: [
        Expanded(
          child: ListView(
            children: [
              topGap == null ? sizePageTopPlaceHolder : topGap!,
              if (formTitle != null) ...[
                formTitle!,
                sizeSectionSmallPlaceHolder,
              ],
              Align(
                child: FormWrap(
                  spacing: spacing,
                  children: children(context),
                ),
              ),
              stackClassicFormBottomPlaceHolder,
            ],
          ),
        ),
      ]),
      persistentFooterButtons: [
        if (formActions != null) formActions!,
        bottomGap == null
            ? sizePageBottomPlaceHolder
            : bottomGap!,
      ],
    );
  }
}
