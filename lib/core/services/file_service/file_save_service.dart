// import 'dart:io';
// import 'package:document_file_save_plus/document_file_save_plus.dart';
// import 'package:mime/mime.dart';
// import 'package:path/path.dart';
//
// abstract class FileSaveService {
//   Future saveFile(File file);
//   Future saveMultipleFiles(List<File> files);
// }
//
// class FileSaveServiceImpl implements FileSaveService {
//   final _fileSaver = DocumentFileSavePlus();
//   @override
//   Future saveFile(File file) async {
//     return await _fileSaver.saveFile(file.readAsBytesSync(),
//         basename(file.path), lookupMimeType(file.path)!);
//   }
//
//   @override
//   Future saveMultipleFiles(List<File> files) async {
//     return await _fileSaver.saveMultipleFiles(
//         dataList: files.map((file) => file.readAsBytesSync()).toList(),
//         fileNameList: files.map((file) => basename(file.path)).toList(),
//         mimeTypeList: files.map((file) => lookupMimeType(file.path)!).toList());
//   }
// }