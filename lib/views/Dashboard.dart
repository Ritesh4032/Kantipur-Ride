import 'package:flutter/material.dart';

import 'package:kantipur_ride/drawer/drawer.dart';

import 'package:kantipur_ride/views/password.dart';

import 'package:kantipur_ride/views/profile.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String _selectedOption = 'USA'; // Initialize with the first option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2075B8),
        title: Image.asset(
          'assets/images/kantipur.jpeg',
          height: 80,
          width: 100,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 50),
              child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Profile(),
                                          ));
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                            color: Colors.blue,
                                            Icons.add_moderator_rounded),
                                        SizedBox(width: 10),
                                        Text(
                                          'Profile',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(8.0)),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Password(),
                                          ));
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                            color: Colors.blue, Icons.security),
                                        SizedBox(width: 10),
                                        Text(
                                          'Change Password',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(8.0)),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop('Logout');
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                            color: Colors.red,
                                            Icons.logout_outlined),
                                        SizedBox(width: 10),
                                        Text(
                                          'Log Out',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child:
                      Image.asset('assets/images/profile3.png', height: 40))),
        ],
      ),
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
                    child: Text(
                      'DASHBOARD',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      'Dashboard Overview',
                      style: TextStyle(
                          color: Color(0xFF2075B8),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Graph by Country',
              style: TextStyle(
                color: Color(0xFF2075B8),
                fontSize: 14,
              ),
            ),
            Divider(
              height: 10,
              endIndent: 10,
              indent: 10,
              thickness: 2.5,
              color: Colors.blue,
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(8),
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 3,
                    color: Colors.grey.withOpacity(0.3),
                  )
                ],
                border: Border.all(color: Colors.white, width: 1),
                // borderRadius: BorderRadius.circular(20)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedOption,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 20,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedOption = newValue;
                      });
                    }
                  },
                  items: <String>['USA', 'Nepal', 'Vietnam']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 5)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                //  border: Border.all(color: Color(0xFF2075B8), width: 1)
              ),
              width: 350,
              height: 135,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    height: 90,
                    width: 80,
                    child: Icon(
                      size: 70,
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 60),
                  Container(
                    padding: EdgeInsets.only(top: 30, right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'No. of Users',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '30',
                          style:
                              TextStyle(color: Color(0xFF2075B8), fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 5)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                //  border: Border.all(color: Color(0xFF2075B8), width: 1)
              ),
              width: 350,
              height: 135,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 4, 56, 99),
                    ),
                    height: 90,
                    width: 80,
                    child: Icon(
                      size: 70,
                      Icons.electric_bike,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 60),
                  Container(
                    padding: EdgeInsets.only(top: 30, right: 65),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'No. of Providers',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '32',
                          style:
                              TextStyle(color: Color(0xFF2075B8), fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 5)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              width: 350,
              height: 135,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink),
                    height: 90,
                    width: 80,
                    child: Icon(
                      size: 70,
                      Icons.bar_chart,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 60),
                  Container(
                    padding: EdgeInsets.only(top: 30, right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'No. of Fleets',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '0',
                          style:
                              TextStyle(color: Color(0xFF2075B8), fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 5)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                //  border: Border.all(color: Color(0xFF2075B8), width: 1)
              ),
              width: 350,
              height: 135,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    height: 90,
                    width: 80,
                    child: Icon(
                      size: 70,
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 60),
                  Container(
                    padding: EdgeInsets.only(top: 30, right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'No. of Shops',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '0',
                          style:
                              TextStyle(color: Color(0xFF2075B8), fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ]),
              height: 200,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Transport',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ]),
              height: 200,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Service',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ]),
              height: 200,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Orders',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ]),
              height: 200,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Overall Summary',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
