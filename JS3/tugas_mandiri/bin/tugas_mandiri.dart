import 'dart:math';
import 'package:tugas_mandiri/input.dart';
import 'package:tugas_mandiri/hint.dart';

void main() {
  final random = Random();
  final target = random.nextInt(100) + 1;
  int percobaan = 0;

  print("=== Game Tebak Angka ===");
  print("Saya menyimpan angka antara 1-100. Coba tebak!");

  int tebakan;
  do {
    tebakan = InputHelper.bacaTebakan();
    percobaan++;

    if (tebakan < target) {
      print("Terlalu kecil!");
    } else if (tebakan > target) {
      print("Terlalu besar!");
    } else {
      print("Benar! Angkanya $target");
    }

    HintHelper.beriHint(percobaan, target);
  } while (tebakan != target);
}
