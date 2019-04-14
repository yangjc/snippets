import 'dart:math';

String getRandomWord() {
  final n = Random().nextInt(62);
  if (n < 10) {
    return n.toString();
  }
  if (n < 36) {
    return String.fromCharCode(n + 55);
  }
  return String.fromCharCode(n + 61);
}

String getRandomWords(length) {
  String str = '';
  for (int i = 0; i < length; i++) {
    str += getRandomWord();
  }
  return str;
}
