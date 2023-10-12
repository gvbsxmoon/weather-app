String compassDirection(double d) {
  const List<String> directions = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW'];
  final int index = ((d % 360) / 45).round();
  return directions[index % 8];
}