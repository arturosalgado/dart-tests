import 'package:dart_application_test/dart_application_test.dart' as dart_application_test;

void maindd(List<String> arguments) {
  print('Hello world: ${dart_application_test.calculate()}!');
}
void main() {
  List<Map<String, dynamic>> list1 = [
    {"groups": ["f1", "f2"]},
    {"groups": ["f2", "f3"]},
    {"groups": ["f3", "f1"]}
  ];

  List<Map<String, dynamic>> list2 = [
    {"games": ["f1", "f2"]},
    {"games": ["f2", "f3"]},
    {"games": ["f3", "f1"]}
  ];

  // Filtering list1 by 'groups'
  var result1 = list1.applyFilter('groups', ["f1"]);
  print(result1); // [{groups: [f1, f2]}, {groups: [f3, f1]}]

  // Filtering list2 by 'games'
  var result2 = list2.applyFilter('games', ["f2", "f3"]);
  print(result2); // [{games: [f1, f2]}, {games: [f2, f3]}, {games: [f3, f1]}]

  // If the key doesn't exist or no matches are found, it returns an empty list
  var result3 = list1.applyFilter('nonexistent', ["f1"]);
  print(result3); // []
}

