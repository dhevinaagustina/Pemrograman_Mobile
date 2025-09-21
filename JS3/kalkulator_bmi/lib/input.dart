import 'dart:io';

// Fungsi untuk validasi input angka
double getValidInput(String prompt) {
  double? value;
  while (value == null) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();

    if (input != null && double.tryParse(input) != null) {
      value = double.parse(input);
      if (value > 0) {
        return value;
      } else {
        print("⚠️ Input harus lebih dari 0!");
        value = null;
      }
    } else {
      print("⚠️ Harap masukkan angka yang valid!");
    }
  }
  return value;
}
