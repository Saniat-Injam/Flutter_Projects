class Employee {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Employee({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    email = json["email"];
    firstName = json["firstName"];
    lastName = json["lastName"];
    avatar = json["avatar"];
  }
}
