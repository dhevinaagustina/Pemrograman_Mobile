import 'dart:io';

class InputHelper {
  static int bacaTebakan() {
    stdout.write("Masukkan tebakanmu: ");
    String? input = stdin.readLineSync();
    return int.parse(input!);
  }
}
