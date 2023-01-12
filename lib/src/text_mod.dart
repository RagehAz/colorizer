// ignore_for_file: always_put_control_body_on_new_line
import 'text_check.dart';

class TextMod {
  // -----------------------------------------------------------------------------

  const TextMod();

  // -----------------------------------------------------------------------------
  /// TESTED : WORKS PERFECT
  static String removeTextAfterFirstSpecialCharacter(String verse, String specialCharacter) {
    String _result = verse;

    if (verse != null && verse != ''){

      final bool _verseContainsChar = TextCheck.stringContainsSubString(
        string: verse,
        subString: specialCharacter,
      );

      if (_verseContainsChar == true) {
        _result = verse?.substring(0, verse.indexOf(specialCharacter));
      }

    }

    return _result;
  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static String removeTextBeforeFirstSpecialCharacter(String verse, String specialCharacter) {
    String _result = verse;

    if (verse != null && verse != ''){

      final bool _verseContainsChar = TextCheck.stringContainsSubString(
        string: verse,
        subString: specialCharacter,
      );

      if (_verseContainsChar == true) {
        final int _position = verse?.indexOf(specialCharacter);
        _result = verse == null ?
        null
            :
        (_position != -1) ?
        verse.substring(_position + 1, verse.length)
            :
        verse;
      }

    }

    return _result;
  }
  // --------------------
}
