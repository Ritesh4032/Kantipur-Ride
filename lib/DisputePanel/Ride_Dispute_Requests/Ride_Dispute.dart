import 'package:flutter/material.dart';
import 'package:kantipur_ride/DisputePanel/Ride_Dispute_Requests/AddResponseRide.dart';

class RideDispute extends StatefulWidget {
  const RideDispute({super.key});

  @override
  State<RideDispute> createState() => _RideDisputeState();
}

class _RideDisputeState extends State<RideDispute> {
  List<Map<String, String>> data = [
    {
      "Sno": "1",
      "id": "Ritesh RC",
      "Raised": "SUSHIL SHRESHTHA",
      "Dispute": "HELLO",
      "reason": "hello",
      "comment": "right",
      "Refund": "HELLO",
      "STATUS": "hello",
      "Actions": "right"
    },
    {
      "Sno": "2",
      "id": "Sushil Dhakal",
      "Raised": "SAROJ KHANAL",
      "Dispute": "HELLO",
      "reason": "hello",
      "comment": "right",
      "Refund": "HELLO",
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
                      builder: (context) => AddResponseRide(),
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
              DataColumn(label: Text('Booking ID')),
              DataColumn(label: Text('Raised By')),
              DataColumn(label: Text('Dispute Type')),
              DataColumn(label: Text('Reason')),
              DataColumn(label: Text('Comments')),
              DataColumn(label: Text('Refund Amount')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: data
                .map((item) => DataRow(
                      cells: [
                        DataCell(Text(item['Sno']!)),
                        DataCell(Text(item['id']!)),
                        DataCell(Text(item['Raised']!)),
                        DataCell(Text(item['Dispute']!)),
                        DataCell(Text(item['reason']!)),
                        DataCell(Text(item['comment']!)),
                        DataCell(Text(item['Refund']!)),
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
