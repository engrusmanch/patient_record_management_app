import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;
import 'dart:io';


class IsarSingleton {
  static Isar? _isarInstance;

  static Future<void> initialize() async {
    if (_isarInstance == null) {
      final dir = await getApplicationDocumentsDirectory();
      final path = p.join(dir.path, 'my_database.isar');

      if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
        File(path).createSync(recursive: true);
      }

      // _isarInstance = await Isar.open(
      //   // isarSchema,
      //   // directory: dir.path,
      //
      // );
    }
  }

  static Isar get isar {
    assert(
    _isarInstance != null,
    'Isar has not been initialized. Call initialize() before using it.',
    );
    return _isarInstance!;
  }
}

final isarSchema = [
  // ProductSchema,
  // Add other schemas here if needed.
];

// Import your ProductSchema here.
