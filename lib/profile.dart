import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> with TickerProviderStateMixin {
  TabController tabController ;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
  }
  int selectedIndex = 0;
  List<String> imges = [
    'images/Furniture1.jpg',
    'images/Furniture4.jpg',
    'images/Furniture5.jpg',
    'images/Furniture6.jpg',
    'images/Furniture7.jpg',
    'images/Furniture8.jpg',
    'images/Furniture9.jpg',
    'images/Furniture10.jpg',
    'images/Furniture11.jpg',
    'images/Furniture1.jpg',
    'images/Furniture4.jpg',
    'images/Furniture5.jpg',
    'images/Furniture6.jpg',
    'images/Furniture7.jpg',
    'images/Furniture8.jpg',
    'images/Furniture9.jpg',
    'images/Furniture10.jpg',
    'images/Furniture11.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.dehaze,
                color: Colors.black,
              ),
              onPressed: () {}),


        ],
        title: Text(
          'STYLISH',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 17),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/Furniture9.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '1,252',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'posts',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '4m',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('followers'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '256',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('following'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 32,
                      child: RaisedButton(
                        color: Color(0xffEEEEEE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {},
                        child: Text('Edit Profile',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff606060))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Home Furniture',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    'Home accessories, some information about us',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xff999999), fontSize: 15),
                  ),
                  Text(
                    'Contact us:',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '+925 987 952 2365',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                  ),
                  Text(
                    ' Chennai, India',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xff999999), fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 32,
                  child: RaisedButton(
                    color: Color(0xffEEEEEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onPressed: () {},
                    child: Text('Add Product',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff606060))),
                  ),
                ),
                Container(
                  width: 100,
                  height: 32,
                  child: RaisedButton(
                    color: Color(0xffEEEEEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onPressed: () {},
                    child: Text('Share',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff606060))),
                  ),
                ),
                Container(
                  width: 100,
                  height: 32,
                  child: RaisedButton(
                    color: Color(0xffEEEEEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onPressed: () {},
                    child: Text('Contact Us',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff606060))),
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: imges.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imges[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: selectedIndex,
          activeColor: Color(0xff333333),
          inactiveColor: Color(0xffA5A5A5),
          // Use this to update the Bar giving a position
          onTap: ( int index) {
            selectedIndex=index;
            tabController.animateTo(index);
          },
          items: [
            TitledNavigationBarItem(title: Text('Home'), icon: Icons.home),
            TitledNavigationBarItem(title: Text('Search'), icon: Icons.search),
            TitledNavigationBarItem(title: Text('profile'), icon: Icons.person),
          ]),

    );
  }

}


