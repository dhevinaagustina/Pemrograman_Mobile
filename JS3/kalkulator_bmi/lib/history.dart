class History {
  List<String> _records = [];

  void addRecord(String record) {
    _records.add(record);
  }

  void showHistory() {
    if (_records.isEmpty) {
      print("Belum ada riwayat perhitungan.");
    } else {
      print("Riwayat perhitungan:");
      for (var r in _records) {
        print("- $r");
      }
    }
  }
}
