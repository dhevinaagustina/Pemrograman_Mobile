import 'dart:io';
import 'input.dart';
import 'bmi.dart';
import 'history.dart';

void main() {
  History history = History();
  bool ulang = true;

  while (ulang) {
    double berat = getValidInput("Masukkan berat badan (kg): ");
    double tinggi = getValidInput("Masukkan tinggi badan (cm): ");

    double bmi = calculateBMI(berat, tinggi);
    String kategori = categorizeBMI(bmi);

    print("Hasil BMI: ${bmi.toStringAsFixed(2)} ($kategori)");

    history.addRecord(
        "Berat: $berat, Tinggi: $tinggi, BMI: ${bmi.toStringAsFixed(2)} ($kategori)");

    stdout.write("\nIngin menghitung lagi? (y/n): ");
    String? jawaban = stdin.readLineSync();
    ulang = (jawaban?.toLowerCase() == 'y');
  }

  history.showHistory();
}
