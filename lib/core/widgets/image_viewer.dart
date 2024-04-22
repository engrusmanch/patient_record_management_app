import 'dart:io';

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, this.imageFile, this.imageUrl});

  final File? imageFile;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 1.6,
          child: imageFile != null
              ? Image.file(imageFile!, fit: BoxFit.cover)
              : Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                )
          // Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: <Color>[Colors.orange, Colors.red],
          //       stops: <double>[0.0, 1.0],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
