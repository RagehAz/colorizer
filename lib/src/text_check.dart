import 'package:flutter/material.dart';

class TextCheck {
  // -----------------------------------------------------------------------------

  const TextCheck();

  // -----------------------------------------------------------------------------
  /// TESTED : WORKS PERFECT
  static bool stringContainsSubString({
    @required String string,
    @required String subString,
  }) {
    bool _itContainsIt = false;

    if (string != null && subString != null) {
      if (
      string.toLowerCase().contains(subString?.toLowerCase())
      ) {
        _itContainsIt = true;
      }
    }

    return _itContainsIt;
  }
  // --------------------
}
