import 'dart:convert';
import 'dart:io';

import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

final class ProductFilePickerFuncs {
  Future<List<PlatformFile>?> pickMediaFile({
    FileType type = FileType.any,
  }) async {
    final result = await FilePicker.platform.pickFiles(
      type: type,
      allowMultiple: true,
    );

    if (result?.files == null || (result?.files.isEmpty ?? false)) {
      return [];
    }
    final selectedFiles = result?.files;
    return selectedFiles;
  }

  Future<List<File>?> saveImage(List<PlatformFile> image) async {
    if (Platform.isLinux) {
      await getApplicationDocumentsDirectory();
    } else {
      await getExternalStorageDirectories();
    }

    final ff = <File>[];
    for (var e in image) {
      final file = File(e.xFile.path);
      ff.add(file);
    }
    return ff;
  }

  Future<List<FileSend>> fileConvertToString(List<File> files) async {
    final base64EncodedFiles = await Future.wait(
      files.map((file) async {
        final name = file.path;
        final url = base64Encode(file.readAsBytesSync());
        return FileSend(name: name, url: url);
      }),
    );

    return base64EncodedFiles;
  }
}
