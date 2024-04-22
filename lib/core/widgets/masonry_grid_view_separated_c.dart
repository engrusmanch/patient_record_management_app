// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// /// ListView.separated with preset paramaters including [shrinkWrap] and [physics] to
// /// to allow a scrollable [ListView.separated] to be child of another [ListView] with
// /// throwing [Renderflex] overflow exception
// ///
// class CustomGridViewSeparated extends StatelessWidget {
//   const CustomGridViewSeparated(
//       {Key? key,
//         required this.itemCount,
//         required this.itemBuilder,
//         // required this.itemSeparator,
//         this.scrollDirection = Axis.vertical,
//         this.scrollController,
//         this.hasMore = true})
//       : super(key: key);
//
//   final int itemCount;
//   final Widget Function(BuildContext, int) itemBuilder;
//   // final Widget itemSeparator;
//   final ScrollController? scrollController;
//
//   final bool hasMore;
//   final Axis scrollDirection;
//
//   @override
//   Widget build(BuildContext context) {
//     // final width = MediaQuery.of(context).size.width;
//     //
//     // final gridViewWidth = width > (entityType!.width * 2 + 10) ? ;
//     return itemCount == 0
//         ? const Center(
//       child: Text("No Data Available"),
//     )
//         : LayoutBuilder(builder: (context, constraints) {
//       final width = constraints.maxWidth;
//       const desiredWidth = 120;
//       int crossAxisCount = itemCount == 1
//           ? 1
//           : (width / desiredWidth).clamp(1, double.infinity).floor();
//
//       // TODO: Set GridView Width
//       return MasonryGridView.count(
//         padding: const EdgeInsets.only(top: 0.0),
//         crossAxisCount: crossAxisCount,
//         mainAxisSpacing: 0,
//         crossAxisSpacing: 0,
//         itemCount: itemCount,
//         scrollDirection: scrollDirection,
//         primary: false,
//         itemBuilder: (context, index) => itemBuilder(context, index),
//         shrinkWrap: true,
//         controller: scrollController,
//         physics: const NeverScrollableScrollPhysics(),
//       );
//     });
//
//     // ListView.separated(
//     //   controller: scrollController,
//     //   shrinkWrap: true,
//     //   physics: const ScrollPhysics(),
//     //   separatorBuilder: (_, __) => itemSeparator,
//     //   itemCount: itemCount,
//     //   itemBuilder: itemBuilder);
//   }
// }
