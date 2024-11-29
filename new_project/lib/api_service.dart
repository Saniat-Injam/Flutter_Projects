import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://139.59.65.225:8052';

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await http.post(url, body: json.encode(body), headers: {
        'Content-Type': 'application/json',
      });
      return _processResponse(response);
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<dynamic> get(String endpoint, {String? token}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await http.get(url, headers: {
        if (token != null) 'Authorization': 'Bearer $token',
      });
      return _processResponse(response);
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  dynamic _processResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error: ${response.statusCode}, ${response.body}');
    }
  }
}
