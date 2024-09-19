int calculate() {
  return 6 * 7;
}
extension FilterableList<T extends Map<String, dynamic>> on List<T> {
  List<T> applyFilter(String key, List<String> filters) {
    return where((map) {
      var items = map[key];
      if (items is List) {
        return items.any((item) => 
          item is String && filters.contains(item)
        );
      }
      return false;
    }).toList();
  }
}