import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  String _selectedItem = '';
  String _selectedCity = '';
  String _selectedService = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          spreadRadius: 5,
                          blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Ride Details',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                ' First Name',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('First Name'),
                    //hintText: 'Enter your Name'
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Last Name',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(),
                      label: Text('Last Name')),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Enter your Email')),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Phone',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Phone')),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Select Country',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white),
                ],
              ),
              height: 90,
              padding: EdgeInsets.all(16.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Select Country',
                ),
                value: _selectedItem.isNotEmpty ? _selectedItem : null,
                onChanged: (String? value) {
                  setState(() {
                    _selectedItem = value ?? '';
                  });
                },
                items: <String>[
                  'Nepal',
                  'United States',
                  'Vietnam',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Select City',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white),
                ],
              ),
              height: 90,
              padding: EdgeInsets.all(16.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Select City',
                ),
                value: _selectedCity.isNotEmpty ? _selectedCity : null,
                onChanged: (String? value) {
                  setState(() {
                    _selectedCity = value ?? '';
                  });
                },
                items: <String>[
                  'Kathmandu',
                  'Pokhara',
                  'Lalitpur',
                  'Kritipur',
                  'Surkhet',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Select Country',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white),
                ],
              ),
              height: 90,
              padding: EdgeInsets.all(16.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Main Sercice',
                ),
                value: _selectedService.isNotEmpty ? _selectedService : null,
                onChanged: (String? value) {
                  setState(() {
                    _selectedService = value ?? '';
                  });
                },
                items: <String>[
                  'Transport',
                  'Service',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Pickup Address',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Pickup Address'),
                    //hintText: 'Enter your Name'
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                ' Dropoff Address',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                width: 350,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('DropOFF Address'),
                    //hintText: 'Enter your Name'
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => PieChartSample(),
                          //     ));
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
                SizedBox(width: 100),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => PieChartSample(),
                          //     ));
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
