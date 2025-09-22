class HintHelper {
  static bool beriHint(int percobaan, int target) {
    switch (percobaan) {
      case 5:
        print("💡 Hint: Angkanya ${target % 2 == 0 ? 'genap' : 'ganjil'}");
        break;
      case 10:
        print("Kesempatan habis. Angkanya adalah $target");
        return true; // game selesai
    }
    return false;
  }
}
