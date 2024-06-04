import 'package:flutter/material.dart';

class AddResponse extends StatefulWidget {
  const AddResponse({super.key});

  @override
  State<AddResponse> createState() => _AddResponseState();
}

class _AddResponseState extends State<AddResponse> {
  String selectedService = "TRANSPORT"; // To store the selected service

  List<String> services = ["TRANSPORT", "ORDER", "SERVICE", "DELIVERY"];
  String selectedDisputetype = "USER"; // To store the selected service

  List<String> Disputetype = [
    "USER",
    "PROVIDER",
  ];
  String selectedStatus = "Active"; // To store the selected service

  List<String> Status = [
    "Active",
    "Inactive",
  ];
  final _serviceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2075B8),
        title: Padding(
          padding: const EdgeInsets.only(left: 38),
          child: Text(
            "Add Dispute Reason",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white60,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value:
                            selectedService, // Set the initial selected value
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 18,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String? value) {
                          // Update selectedService on change
                          setState(() {
                            selectedService = value!;
                          });
                        },
                        items: services
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Dispute Type',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value:
                            selectedDisputetype, // Set the initial selected value
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 18,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String? value) {
                          // Update selectedService on change
                          setState(() {
                            selectedDisputetype = value!;
                          });
                        },
                        items: Disputetype.map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Reasons',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                          controller: _serviceController,
                          decoration: InputDecoration(
                              label: Text('Dispute Name'),
                              border: OutlineInputBorder())),
                      SizedBox(height: 10),
                      Text(
                        'Status',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: selectedStatus, // Set the initial selected value
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 18,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String? value) {
                          // Update selectedService on change
                          setState(() {
                            selectedStatus = value!;
                          });
                        },
                        items: Status.map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          onPressed: () {},
                          child: Text(
                            'Add Dispute Reasons',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
