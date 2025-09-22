import 'dart:io';

class InputHelper {
  static int bacaTebakan() {
    while (true) {
      stdout.write("Masukkan tebakanmu: ");
      String? input = stdin.readLineSync();

      if (input == null || input.isEmpty) {
        print("Input tidak boleh kosong!");
        continue;
      }

      int? angka = int.tryParse(input);
      if (angka == null) {
        print("Harus berupa angka!");
        continue;
      }

      return angka;
    }
  }
}
