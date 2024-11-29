import 'dart:convert';
import 'package:api_demo/employee.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  String baseUrl = "https://reqres.in/api/";

  getAllEmployeesData() async {
    List<Employee> allEmployees = [];
    try {
      var response = await http.get(Uri.parse("${baseUrl}users?page=2"));

      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        var employees = decodedData["data"];

        for (var employee in employees) {
          Employee newEmployee = Employee.fromJson(employee);
          allEmployees.add(newEmployee);
        }

        return allEmployees;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
