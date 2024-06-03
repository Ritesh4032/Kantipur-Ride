import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantipur_ride/drawer/drawer.dart';
import 'package:kantipur_ride/views/profile.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _ProfileState();
}

class _ProfileState extends State<Password> {
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
                      Image.asset('assets/images/profile2.png', height: 40))),
        ],
      ),
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Change Your Password',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Old Password',
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
                    label: Text('Enter Old Password'),
                    //hintText: 'Enter your Name'
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'New Password',
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
                      label: Text('Enter new Password')),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Retype New Password',
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
                      label: Text('Retype New Password')),
                ),
              ),
            ),
            SizedBox(height: 20),
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
                      'Update Pasword',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
