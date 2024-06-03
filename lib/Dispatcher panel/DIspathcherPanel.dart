import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantipur_ride/Dispatcher%20panel/Add.dart';
import 'package:kantipur_ride/Dispatcher%20panel/Searching.dart';
import 'package:kantipur_ride/drawer/drawer.dart';
import 'package:kantipur_ride/views/password.dart';
import 'package:kantipur_ride/views/profile.dart';

class DispatcherPanel extends StatefulWidget {
  const DispatcherPanel({super.key});

  @override
  State<DispatcherPanel> createState() => _DispatcherPanelState();
}

class _DispatcherPanelState extends State<DispatcherPanel> {
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
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Request List',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.white,
                      child: TabBar(
                        labelColor: Color(0xFF2075B8),
                        indicatorColor: Color(0xFF2075B8),
                        tabs: [
                          Tab(
                            icon: Icon(
                                color: Color(0xFF2075B8), Icons.search_rounded),
                            text: 'Searching',
                          ),
                          Tab(
                            icon: Icon(
                                color: Color(0xFF2075B8), Icons.assignment_add),
                            text: 'Assigned',
                          ),
                          Tab(
                            icon: Icon(color: Color(0xFF2075B8), Icons.add),
                            text: 'Add',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Center(child: Search()),
                          Center(child: Text('Document Information')),
                          Center(child: Add()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
