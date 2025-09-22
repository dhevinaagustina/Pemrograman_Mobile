import 'dart:math';
import 'input.dart';
import 'hint.dart';

class Game {
  final int target = Random().nextInt(100) + 1;
  int percobaan = 0;
  bool selesai = false;

  void mulai() {
    print("=== Game Tebak Angka ===");
    print("Saya menyimpan angka antara 1-100. Coba tebak!");

    do {
      int tebakan = InputHelper.bacaTebakan();
      percobaan++;

      if (tebakan == target) {
        print("🎉 Benar! Angkanya $target (percobaan ke-$percobaan)");
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
}
