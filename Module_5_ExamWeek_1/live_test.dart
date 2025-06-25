main ()
{
  List <Map <String, dynamic>> studentList =
  [
    {'name': 'Alice', 'scores': <int> [85, 90, 78]},
    {'name': 'Bob', 'scores': <int> [88, 76, 95]},
    {'name': 'Charlie', 'scores': <int> [90, 92, 85]},
  ];

  Map<String, double> averageScores = {};
  for (var student in studentList) {
    String name = student['name'];
    List<int> scores = student['scores'];
    double sum = scores.reduce((a, b) => a + b).toDouble();
    double avg = sum / scores.length;
    double rounded = double.parse(avg.toStringAsFixed(2));
    averageScores [name] = rounded;
  }

  var sortedEntries = averageScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedMap = Map.fromEntries(sortedEntries);

  print(sortedMap);

} //main