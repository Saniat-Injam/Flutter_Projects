import "package:api_demo/models/employee.dart";
import "package:api_demo/services/fetch_data.dart";
import "package:flutter/material.dart";

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Employees Data"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              FetchData().getAllEmployeesData();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FutureBuilder(
          future: FetchData().getAllEmployeesData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Error!! fetching employee data"),
              );
            }
            if (snapshot.hasData) {
              var data = snapshot.data as List<Employee>;

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
