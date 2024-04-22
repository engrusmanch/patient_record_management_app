import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class ImageService {
  Future<File?> pickImage();

  Future<List<File>> pickMultipleImages();
}

class ImageServiceImpl implements ImageService {
  final _imagePicker = ImagePicker();

  ImageServiceImpl();

  @override
  Future<File?> pickImage() async {
    XFile? pickedFile;

    const permission = Permission.storage;
    final PermissionStatus status = await permission.status;

    if (status == PermissionStatus.granted) {
      pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
    } else if (status == PermissionStatus.denied ||
        status == PermissionStatus.restricted) {
      await permission.request();
      await pickImage();
      // return Future.error();
    }

    return null;
  }

  @override
  Future<List<File>> pickMultipleImages() async {
    List<XFile> pickedFiles = [];

    const permission = Permission.storage;
    final PermissionStatus status = await permission.status;

    if (status == PermissionStatus.granted) {
      pickedFiles = await _imagePicker.pickMultiImage();

      return pickedFiles.map((pickedFile) => File(pickedFile.path)).toList();
    } else if (status == PermissionStatus.denied ||
        status == PermissionStatus.restricted) {
      await permission.request();
      await pickMultipleImages();
      // return Future.error();
    }

    return pickedFiles.map((pickedFile) => File(pickedFile.path)).toList();
  }
  // Future<String> cropImage(PickedFile pickedFile) async {
  //   final file = await ImageCropper.cropImage(
  //       sourcePath: File(pickedFile.path).path,
  //       androidUiSettings: const AndroidUiSettings(
  //         toolbarTitle: 'Cropper', lockAspectRatio: false,
  //       ),
  //       iosUiSettings:
  //       const IOSUiSettings(aspectRatioLockEnabled: false,
  //           minimumAspectRatio: 1.0,
  //           title: 'Cropper'));
  //
  //   return file.path;
  // }
}
