import 'dart:math';
import 'package:tugas_mandiri/input.dart';
import 'package:tugas_mandiri/hint.dart';

void main() {
  final random = Random();
  final target = random.nextInt(100) + 1;
  int percobaan = 0;
  bool selesai = false;

  print("=== Game Tebak Angka ===");
  print("Saya menyimpan angka antara 1-100. Coba tebak!");

  do {
    int tebakan = InputHelper.bacaTebakan();
    percobaan++;

    if (tebakan == target) {
      print("Benar! Angkanya $target (percobaan ke-$percobaan)");
      selesai = true;
    } else if (tebakan < target) {
      print("Terlalu kecil!");
    } else {
      print("Terlalu besar!");
    }

    if (HintHelper.beriHint(percobaan, target)) {
      selesai = true;
    }
  } while (!selesai);
}
