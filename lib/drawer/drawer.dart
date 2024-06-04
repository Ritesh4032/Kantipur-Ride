import 'package:flutter/material.dart';
import 'package:kantipur_ride/Dispatcher%20panel/DIspathcherPanel.dart';
import 'package:kantipur_ride/DisputePanel/Ride_Dispute_Requests/Ride_Dispute.dart';
import 'package:kantipur_ride/views/Dashboard.dart';
import 'package:kantipur_ride/DisputePanel/DisputeReasons/DisputeReason.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  bool dashboardSelected = false;
  bool dispatcherPanelSelected = false;
  bool disputePanelSelected = false;
  bool HeatMapSelected = false;
  bool godsViewSelected = false;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> disputePanelOptions = [
      {
        'title': 'Dispute Reason>',
        'icon': Icons.man_2_rounded,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyDataTablePage(),
            ),
          );
        }
      },
      {
        'title': 'Ride Dispute Requests>',
        'icon': Icons.local_taxi,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RideDispute(),
            ),
          );
        }
      },
      {
        'title': 'Service Dispute Requests>',
        'icon': Icons.room_service,
        'onTap': () {}
      },
      {
        'title': 'Order Dispute Requests>',
        'icon': Icons.trolley,
        'onTap': () {}
      },
    ];

    return Drawer(
      backgroundColor: Color(0xFF2075B8),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 40),
          ListTile(
            title: Text(
              'ADMIN DASHBOARD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            tileColor: dashboardSelected ? Colors.white : null,
            trailing: dashboardSelected
                ? Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.white,
                  ),
            title: Row(
              children: [
                Icon(
                  Icons.dashboard,
                  color: dashboardSelected ? Colors.red : Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Dashboard',
                  style: TextStyle(
                      color: dashboardSelected ? Colors.red : Colors.white),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard(),
                ),
              );
              setState(() {
                dashboardSelected = !dashboardSelected;
              });
            },
          ),
          ListTile(
            tileColor: dispatcherPanelSelected ? Colors.white : null,
            trailing: dispatcherPanelSelected
                ? Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  ),
            title: Row(
              children: [
                Icon(
                  Icons.fire_truck,
                  color: dispatcherPanelSelected ? Colors.red : Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Dispatcher Panel',
                  style: TextStyle(
                      color:
                          dispatcherPanelSelected ? Colors.red : Colors.white),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DispatcherPanel(),
                ),
              );
              setState(() {
                dispatcherPanelSelected = !dispatcherPanelSelected;
              });
            },
          ),
          ListTile(
            tileColor: disputePanelSelected ? Colors.white : null,
            trailing: disputePanelSelected
                ? Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  ),
            title: Row(
              children: [
                Icon(
                  Icons.man,
                  color: disputePanelSelected ? Colors.red : Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Dispute Panel',
                  style: TextStyle(
                      color: disputePanelSelected ? Colors.red : Colors.white),
                )
              ],
            ),
            onTap: () {
              setState(() {
                disputePanelSelected = !disputePanelSelected;
              });
            },
          ),
          if (disputePanelSelected)
            Column(
              children: disputePanelOptions
                  .map((option) => ListTile(
                        leading: Icon(
                          option['icon'],
                          color: Colors.white,
                        ),
                        title: Text(
                          option['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        onTap: option['onTap'],
                      ))
                  .toList(),
            ),
          ListTile(
            tileColor: HeatMapSelected ? Colors.white : null,
            trailing: HeatMapSelected
                ? Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  ),
            title: Row(
              children: [
                Icon(
                  Icons.map,
                  color: HeatMapSelected ? Colors.red : Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Heat Map',
                  style: TextStyle(
                      color: HeatMapSelected ? Colors.red : Colors.white),
                )
              ],
            ),
            onTap: () {
              setState(() {
                HeatMapSelected = !HeatMapSelected;
              });
            },
          ),
          ListTile(
            tileColor: godsViewSelected ? Colors.white : null,
            trailing: godsViewSelected
                ? Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  ),
            title: Row(
              children: [
                Icon(
                  Icons.remove_red_eye,
                  color: godsViewSelected ? Colors.red : Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Gods View',
                  style: TextStyle(
                      color: godsViewSelected ? Colors.red : Colors.white),
                )
              ],
            ),
            onTap: () {
              setState(() {
                godsViewSelected = !godsViewSelected;
              });
            },
          ),
        ],
      ),
    );
  }
}
