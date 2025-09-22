class HintHelper {
  static void beriHint(int percobaan, int target) {
    if (percobaan == 5) {
      print("💡 Hint: Angkanya ${target % 2 == 0 ? 'genap' : 'ganjil'}");
    }
  }
}
