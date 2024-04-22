// import 'package:flutter/material.dart';
//
// import 'package:patientrecordmanagementapp/core/constants/strings.dart';
// import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
// import 'package:patientrecordmanagementapp/core/widgets/button.dart';
//
//
//
// abstract class ImageCaseController<T> extends GetxController {
//   T? selectedEntity;
//
//
//   Future<void> addImage();
//
//   removeImage(int index);
//
//   bool get isUpdatingEntity;
//
//   bool get isLoadingImages;
// }
//
// /// Widget that renders a list to display selected [Image]s and allows to select
// /// more images, to be shown in the [ImageCase]
// class ImageCase<T extends ImageCaseController> extends StatelessWidget {
//   const ImageCase({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Theme.of(context).colorScheme.primary),
//         ),
//         margin: const EdgeInsets.symmetric(vertical: 15.0),
//         child: GetBuilder<T>(
//             id: "GetBuilderIds.updateFileCase",
//             builder: (imageController) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(
//                     height: 100.0,
//                     child: (imageController.isUpdatingEntity &&
//                             imageController.imagesCustomData!.isEmpty)
//                         ? const SizedBox()
//                         : imageController.imagesCustomData!.isEmpty
//                             ? InkWell(
//                                 onTap: imageController.addImage,
//                                 child: const AddImageMessage())
//                             : Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 8.0),
//                                 child: ListView.separated(
//                                   key: UniqueKey(),
//                                   // shrinkWrap: true,
//                                   scrollDirection: Axis.horizontal,
//                                   itemCount:
//                                       imageController.imagesCustomData!.length,
//                                   separatorBuilder: (_, __) => sizeHorizontalFieldMinPlaceHolder,
//                                   itemBuilder: (_, index) => FileIcon(
//                                     imageData: imageController
//                                         .imagesCustomData![index],
//                                     index: index,
//                                     onRemove: () =>
//                                         imageController.removeImage(index),
//                                     showRemoveIcon:
//                                         !imageController.isUpdatingEntity,
//                                     isLoading: imageController.isLoadingImages,
//                                   ),
//                                 ),
//                               ),
//                   ),
//                   if (imageController.imagesCustomData!.isNotEmpty &&
//                       !imageController.isUpdatingEntity)
//                     ButtonWidget(
//                         text: "Add Photos",
//                         radius: 0.0,
//                         buttonType: ButtonType.transparent,
//                         onPressed: imageController.addImage)
//                 ],
//               );
//             }));
//   }
// }
//
// class AddImageMessage extends StatelessWidget {
//   const AddImageMessage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TextTheme textTheme = Theme.of(context).textTheme;
//
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//          Icon(
//           Icons.add_a_photo_outlined,
//           size: 30.0,
//           color: Theme.of(context).colorScheme.primary,
//         ),
//         const SizedBox(
//           height: 10.0,
//         ),
//         Text(
//           "Add Image",
//           style: textTheme.titleSmall,
//         )
//       ],
//     );
//   }
// }
