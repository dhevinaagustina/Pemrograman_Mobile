double calculateBMI(double weight, double height) {
  double heightInMeter = height / 100; // konversi cm ke meter
  return weight / (heightInMeter * heightInMeter);
}

String categorizeBMI(double bmi) {
  if (bmi < 18.5) {
    return "Kurus";
  } else if (bmi < 25) {
    return "Normal";
  } else {
    return "Gemuk";
  }
}
