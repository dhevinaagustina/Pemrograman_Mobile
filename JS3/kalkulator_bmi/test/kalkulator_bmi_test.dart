import 'package:test/test.dart';
import 'package:kalkulator_bmi/bmi.dart';

void main() {
  group('Perhitungan BMI', () {
    test('Hitung BMI dengan berat 70kg dan tinggi 170cm', () {
      double result = calculateBMI(70, 170);
      expect(result.toStringAsFixed(2), '24.22'); // hasil seharusnya 24.22
    });

    test('Kategori Kurus', () {
      double bmi = 17.5;
      expect(categorizeBMI(bmi), 'Kurus');
    });

    test('Kategori Normal', () {
      double bmi = 22.0;
      expect(categorizeBMI(bmi), 'Normal');
    });

    test('Kategori Gemuk', () {
      double bmi = 27.0;
      expect(categorizeBMI(bmi), 'Gemuk');
    });
  });
}
