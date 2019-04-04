/*
 * YJC <https://github.com/yangjc> @2019-04-04
 */

import 'dart:typed_data';
import 'package:pointycastle/digests/sha512.dart';

String sha512(String text) {
  return SHA512Digest()
    .process(Uint8List.fromList(text.codeUnits))
    .fold<String>('', (prev, item) {
      return prev + item.toRadixString(16).padLeft(2, '0');
    });
}

void main() {
  print(sha512('test'));
}
