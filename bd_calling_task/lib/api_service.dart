import 'dart:convert';
import 'package:http/http.dart' as http;
import 'task_model.dart';

class ApiService {
  static const String apiUrl = 'http://139.59.65.225:8052/task/get-all-task';

  Future<List<Task>> fetchTasks() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final tasks = (data['data']['myTasks'] as List)
          .map((taskJson) => Task.fromJson(taskJson))
          .toList();
      return tasks;
    } else {
      throw Exception('Failed to load tasks');
    }
  }
}
