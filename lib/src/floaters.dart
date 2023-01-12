// ignore_for_file: unnecessary_import
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

class Floaters {
  // -----------------------------------------------------------------------------

  const Floaters();

  // --------------------
  /// TESTED : WORKS PERFECT
  static Future<img.Image> getImgImageFromUint8List(Uint8List uInt) async {
    img.Image imgImage;

    if (uInt != null){
      imgImage = img.decodeImage(uInt);
    }

    return imgImage;
  }
  // -----------------------------------------------------------------------------
}
