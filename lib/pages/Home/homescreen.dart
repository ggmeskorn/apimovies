import 'package:api_movie/pages/Home/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _switchValue = false;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/icons/logo.png",
              height: 100,
              width: 100,
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print('Click Menu');
                },
                child: Icon(
                  Icons.search,
                  color: Colors.blue,
                  size: 24.0,
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "หน้าหลัก",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              title: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "ซีรีส์",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              )),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "assets/icons/disneylogo.png",
              ),
              size: 50,
            ),
            title: Text(
              " ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              title: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "ภาพยนตร์",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle),
              title: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "เอเชีย",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: Body(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blue,
                size: 60,
              ),
              title: Text(
                'Username',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              subtitle: Text(
                '+66 690988909',
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              tileColor: Color(0xFFE3E3E3),
              title: Text(
                'KiDS Safe',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffEAB53A)),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.download_outlined,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                'ดาวน์โหลด',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              subtitle: Text(
                'รับชมวิดีโอแบบโดยไม่เชื่อมต่อกับอินเทอร์เน็ต',
                style: TextStyle(fontSize: 9),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.check_outlined,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                'รายการรับชม',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              subtitle: Text(
                'บันทึกไว้รับชมภายหลัง',
                style: TextStyle(fontSize: 9),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.theater_comedy_rounded,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                'ประเภท',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                'ความช่วยเหลือ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.settings_rounded,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                'การตั้งค่า',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
