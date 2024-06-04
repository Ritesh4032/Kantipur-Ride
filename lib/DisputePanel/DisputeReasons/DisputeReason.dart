import 'package:flutter/material.dart';
import 'package:kantipur_ride/DisputePanel/DisputeReasons/AddRespons.dart';

class MyDataTablePage extends StatefulWidget {
  @override
  _MyDataTablePageState createState() => _MyDataTablePageState();
}

class _MyDataTablePageState extends State<MyDataTablePage> {
  String? reason;
  List<Map<String, String>> data = [
    {
      "id": "1",
      "name": "John Doe",
      "age": "30",
      "services": "HELLO",
      "STATUS": "hello",
      "Actions": "right"
    },
    {
      "id": "2",
      "name": "John Doe",
      "age": "30",
      "services": "HELLO",
      "STATUS": "hello",
      "Actions": "right"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2075B8),
        title: Text('Data Table'),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddResponse(),
                    ));
              },
              child: Row(
                children: [
                  Icon(color: Colors.white, Icons.add),
                  Text('Add Reasons', style: TextStyle(color: Colors.white)),
                ],
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(label: Text('S.no')),
              DataColumn(label: Text('Dispute Reason')),
              DataColumn(label: Text('Dispute Type')),
              DataColumn(label: Text('Services')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: data
                .map((item) => DataRow(
                      cells: [
                        DataCell(Text(item['id']!)),
                        DataCell(Text(item['name']!)),
                        DataCell(Text(item['age']!)),
                        DataCell(Text('reasons')),
                        DataCell(Text(item['STATUS']!)),
                        DataCell(Text(item['Actions']!)),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
