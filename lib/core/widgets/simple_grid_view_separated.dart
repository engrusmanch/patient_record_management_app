import 'package:flutter/material.dart';

/// ListView.separated with preset paramaters including [shrinkWrap] and [physics] to
/// to allow a scrollable [ListView.separated] to be child of another [ListView] with
/// throwing [Renderflex] overflow exception
///
class CustomGridViewSeparated extends StatelessWidget {
  const CustomGridViewSeparated(
      {Key? key,
      required this.itemCount,
      required this.itemBuilder,
      this.itemSeparator,
      this.scrollController,
      this.hasMore = true,
      this.scrollDirection = Axis.vertical,
      })
      : super(key: key);

  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget? itemSeparator;
  final ScrollController? scrollController;

  final bool hasMore;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    // TODO: Set GridView Width
    return itemCount == 0
        ? const Center(
            child: Text("No Data Available"),
          )
        : LayoutBuilder(builder: (context, constraints) {
            final width = constraints.maxWidth;
            final desiredWidth = 120;
            int crossAxisCount = itemCount == 1
                ? 1
                : (width / desiredWidth).clamp(1, double.infinity).floor();
            final crossAxisSpacing = (width - (crossAxisCount * desiredWidth)) /
                (crossAxisCount - 1);

            return GridView.builder(
              padding: const EdgeInsets.only(top: 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: itemBuilder,
              itemCount: itemCount,
              scrollDirection: scrollDirection,
              shrinkWrap: true,
              controller: scrollController,
              physics: const NeverScrollableScrollPhysics(),
            );
          });
  }
}
