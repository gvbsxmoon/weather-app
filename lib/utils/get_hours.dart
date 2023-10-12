List<String> getHours(List<String> hours) {
  return hours.map((k) => DateTime.parse(k).hour.toString()).toList();
}
