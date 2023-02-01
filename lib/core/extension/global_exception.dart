import 'package:flutter/foundation.dart';

class GlobalException {
  static Future<T?> make<T>(AsyncValueGetter<T?> onOperation) async {
    try {
      final res = await onOperation.call();
      if (res == null) {
        throw Exception('$T data is null $res');
      }
      return res;
    } catch (e) {
      //logger
      print(e);
      return null;
    }
  }
}
