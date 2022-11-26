import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

@Deprecated("cringe")
class ClientHashHelper {
  final String charSet =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  Uint8List coolList = Uint8List(256);

  ClientHashHelper() {
    for (var n = 0; n < charSet.length; n++) {
      coolList[charSet.codeUnitAt(n)] = n;
    }
  }

  Future<String> calculateHash(dynamic salt, String password) async {
    salt = salt['salt'];

    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac(Sha384()),
      iterations: 200000,
      bits: 1024,
    );

    final newSecretKey = await pbkdf2.deriveKey(
      secretKey: SecretKey(utf8.encode(password)),
      nonce: _saltFunction(salt),
    );
    final newSecretKeyBytes = await newSecretKey.extractBytes();
    return (_hashFunction(newSecretKeyBytes));
  }

  String _hashFunction(List<int> bytes) {
    var r, n = Uint8List.fromList(bytes), a = n.length, o = '';
    int null1, null2, null3;
    for (r = 0; r < a; r += 3) {
      (r) < n.length ? null1 = n[r] : null1 = 0;
      (r + 1) < n.length ? null2 = n[r + 1] : null2 = 0;
      (r + 2) < n.length ? null3 = n[r + 2] : null3 = 0;
      o += charSet[null1 >> 2];
      o += charSet[(3 & null1) << 4 | null2 >> 4];
      o += charSet[(15 & null2) << 2 | null3 >> 6];
      o += charSet[63 & null3];
    }

    return a % 3 == 2
        ? o = '${o.substring(0, o.length - 1)}='
        : a % 3 == 1
            ? (o = '${o.substring(0, o.length - 2)}==')
            : "";
  }

  Uint8List _saltFunction(String input) {
    var e, n, a, o, s;
    var i = 0.75 * input.length;
    var c = input.length;
    var h = 0;
    '=' == input[input.length - 1]
        ? () {
            i--;
            '=' == input[input.length - 2] ? i-- : "";
          }
        : "";
    var u = Uint8List(i.toInt());
    var l = Uint8List.fromList(u);

    for (e = 0; e < c; e += 4) {
      n = coolList[input.codeUnitAt(e)];
      a = (e + 1) < input.length ? coolList[input.codeUnitAt(e + 1)] : null;
      o = (e + 2) < input.length ? coolList[input.codeUnitAt(e + 2)] : null;
      s = (e + 3) < input.length ? coolList[input.codeUnitAt(e + 3)] : null;
      l[h++] = n << 2 | a >> 4;
      o != null ? l[h++] = (15 & a) << 4 | o >> 2 : "";
      ((o != null) && (s != null)) ? l[h++] = (3 & o) << 6 | 63 & s : "";
    }
    return l;
  }
}
