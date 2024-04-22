//
// import 'package:flutter/material.dart';
// import 'package:patientrecordmanagementapp/core/error/error.dart';
//
//
// import 'simple_grid_view_separated.dart';
// 
//
// class ListHelper extends StatelessWidget {
//   const ListHelper(
//       {Key? key,
//       required this.child,
//       this.widgetWhenEmpty,
//       required this.isListLoading,
//       required this.hasListLoadingFailed,
//       required this.isListEmpty,
//       this.scrollDirection = Axis.vertical,
//       // required this.entityType,
//       this.customError,
//       this.emptyOnPressed,
//       this.loadingItems = 3})
//       : super(key: key);
//   final Widget child;
//   final bool isListLoading;
//   final bool hasListLoadingFailed;
//   final bool isListEmpty;
//   final CustomError? customError;
//   final int loadingItems;
//   final Axis scrollDirection;
//   // final EntityType entityType;
//   final Widget? widgetWhenEmpty;
//   final Function()? emptyOnPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         child: (() {
//       // Check: if the list is loading
//       if (isListLoading) {
//         return LoadingList(
//             // entityType: entityType,
//             loadingItems: loadingItems,
//             scrollDirection: scrollDirection);
//       }
//       // Check: if the list has loaded
//       if (!isListLoading) {
//         // Check: if there is an error
//         if (hasListLoadingFailed) {
//           return CustomErrorWidget(
//             customError: customError!,
//           );
//         }
//         // Check: If there is no error, but the loaded list is empty
//         if (isListEmpty) {
//           return Column(
//             children: [
//               if (widgetWhenEmpty != null)
//                 widgetWhenEmpty!
//               else
//                 EmptyDataWidget(
//                   // entityType: entityType,
//                   emptyOnPressed: emptyOnPressed,
//                 )
//               // const NoDataCardMessage(),
//               // if (widgetWhenEmpty != null) widgetWhenEmpty!
//             ],
//           );
//         }
//
//         return child;
//       }
//     }()));
//   }
// }
//
// class EmptyDropDown extends StatelessWidget {
//   const EmptyDropDown({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Icon(
//             Icons.search_off_outlined,
//             size: 70.0,
//           ),
//           Text(
//             'No data available',
//             style: Theme.of(context).textTheme.titleMedium,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class EmptyDataWidget extends StatelessWidget {
//   const EmptyDataWidget(
//       {super.key,
//       // required this.entityType,
//       this.emptyOnPressed,
//       this.showImage = true});
//
//   // final EntityType entityType;
//   final bool showImage;
//   final Function()? emptyOnPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         //asset
//         if (entityType.displayImage != null)
//           // ? Icon(
//           //     Icons.search_off_outlined,
//           //     size: 70.0,
//           //   )
//           // :
//           if (showImage) ...[
//             Image.asset(
//               // entityType.displayImage!,
//               height: 170.0,
//               width: 170,
//             ),
//             const SizedBox(
//               height: 30,
//             )
//           ],
//         Text(
//           entityType.emptyMessage,
//           style: Theme.of(context).textTheme.titleMedium,
//           textAlign: TextAlign.center,
//         ),
//         if (emptyOnPressed != null && entityType.emptyButtonText != null) ...[
//           const SizedBox(
//             height: 40,
//           ),
//           ButtonWidget(
//             width: AppStyles.widgetWidth,
//             text: entityType.emptyButtonText!,
//             expand: true,
//             buttonType: ButtonType.fill,
//             onPressed: () async {
//               emptyOnPressed!();
//             },
//           )
//         ]
//         // AppPlaceHolders.sizeFieldMediumPlaceHolder,
//         // Text(
//         //   'This list is empty.',
//         //   style: Theme.of(context).textTheme.bodyMedium,
//         // ),
//       ],
//     );
//   }
// }
//
// class EmptyCart extends StatelessWidget {
//   const EmptyCart({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Image.asset(
//           AppAssets.cart_empty,
//           height: 170,
//           width: 170,
//         ),
//         const SizedBox(
//           height: 30,
//         ),
//         Text(
//           'Your cart is Empty!',
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//         const SizedBox(
//           height: 40,
//         ),
//         ButtonWidget(
//           width: AppStyles.widgetWidth,
//           text: 'ADD PRODUCTS',
//           expand: true,
//           buttonType: ButtonType.fill,
//           onPressed: () async {
//             Get.to(() => const ProductsPage());
//           },
//         )
//       ],
//     );
//   }
// }
//
// class LoadingList extends StatelessWidget {
//   const LoadingList({
//     Key? key,
//     required this.entityType,
//     this.loadingItems = 1,
//     this.scrollDirection = Axis.vertical,
//   }) : super(key: key);
//   final EntityType entityType;
//   final Axis scrollDirection;
//   final int loadingItems;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // height: entityType.height,
//       child: CustomGridViewSeparated(
//         entityType: entityType,
//         // physics: NeverScrollableScrollPhysics(),
//         scrollDirection: scrollDirection,
//         itemCount: loadingItems,
//         itemBuilder: (_, __) => BaseCard(
//           // height: entityType.height,
//           width: entityType.width,
//           isLoading: true,
//         ),
//         // itemSeparator: const SizedBox(
//         //   height: 30.0,
//         // )
//       ),
//     );
//   }
// }
