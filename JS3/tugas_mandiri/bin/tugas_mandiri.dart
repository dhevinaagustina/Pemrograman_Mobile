import 'dart:math';
import 'package:tugas_mandiri/input.dart';

void main() {
  final random = Random();
  final target = random.nextInt(100) + 1;

  print("=== Game Tebak Angka ===");
  print("Saya menyimpan angka antara 1-100. Coba tebak!");

  int tebakan;
  do {
    tebakan = InputHelper.bacaTebakan();

    if (tebakan < target) {
      print("Terlalu kecil!");
    } else if (tebakan > target) {
      print("Terlalu besar!");
    } else {
      print("Benar! Angkanya $target");
    }
  } while (tebakan != target);
}
