class Employee {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Employee({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Employee.fromJson(Map<String, dynamic> jsonData) {
    id = jsonData["id"];
    email = jsonData["email"];
    firstName = jsonData["firstName"];
    lastName = jsonData["lastName"];
    avatar = jsonData["avatar"];
  }
}
