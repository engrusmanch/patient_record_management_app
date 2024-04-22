import 'dart:io';
import 'dart:typed_data';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';
import 'package:image_picker/image_picker.dart';

class FromGalleryPage extends StatefulWidget {
  const FromGalleryPage({super.key});

  @override
  State<FromGalleryPage> createState() => _FromGalleryPageState();
}

class _FromGalleryPageState extends State<FromGalleryPage> {
  final controller = DocumentScannerController();
  bool imageIsSelected = false;
  late String savedImagePath;
  @override
  void initState() {
    super.initState();

    controller.currentPage.listen((AppPages page) {
      if (page == AppPages.takePhoto) {
        setState(() => imageIsSelected = false);
      }

      if (page == AppPages.cropPhoto) {
        setState(() => imageIsSelected = true);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DocumentScanner(
        controller: controller,
        generalStyles: GeneralStyles(
          showCameraPreview: false,
          widgetInsteadOfCameraPreview: Center(
            child: ElevatedButton(
              onPressed: _selectImage,
              child: const Text('Select image'),
            ),
          ),
        ),
        onSave: (Uint8List imageBytes)async {
          // ? Bytes of the document/image already processed
          // Save the image as a file
          final imageName = DateTime.now().millisecondsSinceEpoch.toString(); // Generate unique name
          final path = await _saveImage(imageBytes, imageName);
          setState(() {
            savedImagePath = path;
          });

        },
      ),
    );
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    await controller.findContoursFromExternalImage(
      image: File(image.path),
    );
  }

  Future<String> _saveImage(Uint8List imageBytes, String imageName) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/$imageName.jpg';
    final imageFile = File(imagePath);
    await imageFile.writeAsBytes(imageBytes);
    return imagePath;
  }

  Future<String> getImagePath(String imageName)async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/$imageName.jpg';
    return imagePath;
  }
}


Future<File> getRelativePathForFile(String fileName) async {
  final Directory directory = await getApplicationDocumentsDirectory();

  // Define filesDir if it's not already defined
  // String filesDir = 'images'; // Example directory name

  String relativePath = fileName;

  String newPath = join(directory.path, relativePath);

  File file = File(newPath);

  return file;
}
