int averageHumidity(List<int> n) {
  if (n.isEmpty) {
    return 0;
  }

  int sum = n.reduce((a, b) => a + b);
  return (sum / n.length).round();
}
