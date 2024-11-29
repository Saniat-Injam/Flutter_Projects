import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'api_service.dart';

// Service Provider
final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

// Task Data Provider
final taskProvider = FutureProvider<List<dynamic>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  final response = await apiService.get('/task/get-all-task');
  return response['data']['myTasks'] as List<dynamic>;
});
