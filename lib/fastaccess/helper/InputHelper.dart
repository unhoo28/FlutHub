class InputHelper {
  static const String SPACE = "\u202F\u202F";

  static bool isEmptyString(String s) {
    return s == null || s.length == 0;
  }

  static bool isWhiteSpace(String s) {
    return s != null && RegExp("\\s+").hasMatch(s);
  }

  static bool isEmpty(String text) {
    return text == null ||
        isEmptyString(text) ||
        isWhiteSpace(text) ||
        text.toLowerCase() == "null";
  }
}
