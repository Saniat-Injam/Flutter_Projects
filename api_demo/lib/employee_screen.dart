import "package:api_demo/api_services.dart";
import "package:api_demo/employee.dart";
import "package:flutter/material.dart";

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Data"),
        actions: [
          IconButton(
            onPressed: () {
              ApiServices().getAllEmployeesData();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FutureBuilder(
          future: ApiServices().getAllEmployeesData(),
          builder: (context, everything) {
            if (everything.hasError) {
              return const Center(
                child: Text("Error!! fetching employee data"),
              );
            }
            if (everything.hasData) {
              var data = everything.data as List<Employee>;

              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index].avatar!),
                      ),
                      title: Text(
                        "${data[index].firstName} ${data[index].lastName}",
                      ),
                      subtitle: Text(data[index].email!),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
