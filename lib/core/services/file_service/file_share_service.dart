// import 'dart:io';
//
// import 'package:share_plus/share_plus.dart';
//
// abstract class FileSharingService {
//   Future shareFile(List<File> files, {String? subject});
// }
//
// class FileSharingServiceImpl implements FileSharingService {
//   @override
//   Future shareFile(List<File> files, {String? subject}) async {
//     await Share.shareXFiles(files.map((file) => XFile(file.path)).toList(),
//         subject: subject);
//   }
// }