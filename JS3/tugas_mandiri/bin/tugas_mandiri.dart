import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final target = random.nextInt(100) + 1;

  print("=== Game Tebak Angka ===");
  print("Saya menyimpan angka antara 1-100. Coba tebak!");

  int? tebakan;
  do {
    stdout.write("Masukkan tebakanmu: ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < target) {
      print("Terlalu kecil!");
    } else if (tebakan > target) {
      print("Terlalu besar!");
    } else {
      print("Benar! Angkanya $target");
    }
  } while (tebakan != target);
}