import 'package:api_movie/components/elevated_Button.dart';
import 'package:api_movie/pages/Home/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static String routeName = "/detail_screen";
  final String name,
      description,
      bannerurl,
      posterurl,
      vote,
      launch_on,
      originallanguage;
  DetailScreen(
      {Key key,
      this.name,
      this.description,
      this.bannerurl,
      this.posterurl,
      this.vote,
      this.launch_on,
      this.originallanguage})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        title: Text(
          widget.name,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        widget.bannerurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //   Positioned(
                  //       bottom: 10, child: Text('⭐ Average Rating - ' + vote)),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network(widget.posterurl),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Disney . Action',
                            style: TextStyle(
                              color: Color(0xFF979797),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'ภาษาต้นฉบับ  ' + widget.originallanguage,
                            style: TextStyle(
                              color: Color(0xFF979797),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.description,
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              child: Text('Button'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white60,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 63, vertical: 5),
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(width: 3),
                            ElevatedButton(
                              child: Text('Button'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFEAEAEA),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 63, vertical: 2),
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            // Container(
            //     padding: EdgeInsets.all(10),
            //     child: Text(
            //       name != null ? name : 'Not Loaded',
            //       style: TextStyle(fontSize: 24),
            //     )),
            // Container(
            //     padding: EdgeInsets.only(left: 10),
            //     child: Text('Releasing On - ' + launch_on,
            //         style: TextStyle(fontSize: 14))),
            // Row(
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 100,
            //       child: Image.network(posterurl),
            //     ),
            //     Flexible(
            //       child: Container(
            //           padding: EdgeInsets.all(10),
            //           child: Text(description, style: TextStyle(fontSize: 18))),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
