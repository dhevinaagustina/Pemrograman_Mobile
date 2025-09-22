import 'package:test/test.dart';
import 'package:tugas_mandiri/tugas_mandiri.dart';

void main() {
  group('Game Tebak Angka', () {
    test('Angka target selalu dalam range 1..100', () {
      final game = Game();
      expect(game.target >= 1 && game.target <= 100, isTrue);
    });

    test('Percobaan awal selalu 0', () {
      final game = Game();
      expect(game.percobaan, equals(0));
    });

    test('Selesai awalnya false', () {
      final game = Game();
      expect(game.selesai, isFalse);
    });
  });
}
