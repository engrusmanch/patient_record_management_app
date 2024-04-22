import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

abstract class FileService {
  Future<File> saveBytesAsFile(Uint8List bodyBytes, String extension);

  Future removeAllFiles();
}

class FileServiceImpl implements FileService {
  @override
  Future<File> saveBytesAsFile(Uint8List bodyBytes, String extension) async {
    final Directory? appDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    final Directory imagesDirectory =
        await Directory("${appDir!.path}/images").create(recursive: true);

    // imagesDirectory.create();

    String tempPath = imagesDirectory.path;
    final String fileName =
        '${DateTime.now().microsecondsSinceEpoch}.$extension';
    File file = File('$tempPath/$fileName');
    if (!await file.exists()) {
      await file.create();
    }
    await file.writeAsBytes(bodyBytes);
    return file;
  }

  @override
  Future removeAllFiles() async {
    final Directory? appDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    final targetSubDirectory = Directory("${appDir!.path}/images");

    if (targetSubDirectory.existsSync()) {
      for (var files in await targetSubDirectory.list().toList()) {
        if (files.existsSync()) {
          files.deleteSync();
        }
      }
    }
  }
}
