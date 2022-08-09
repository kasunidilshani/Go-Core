import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class touristHome extends StatelessWidget {
  final List<String> activities = <String>[
    'Hiking',
    'Surfing',
    'Kayaking',
    'Beaching',
  ];
  final List<String> trendingTours = <String>[
    'Hiking Over Hill',
    'Down South',
    'Hill Country',
    'Beach Side',
  ];
  final List<String> stays = <String>[
    'Hiking Over Hill',
    'Down South',
    'Hill Country',
    'Beach Side',
  ];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  int _selectedActivity = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.personHiking,
    FontAwesomeIcons.umbrellaBeach,
    FontAwesomeIcons.campground,
    FontAwesomeIcons.mountain,
  ];

  final activityList = <String>[
    'Camping',
    'Beaching',
    'Kayaking',
    'Surfing',
    'Rowing'
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        //   StepState(() {
        //     _selectedActivity = Index;
        //   });
        print('clicked!');
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 208, 212, 217),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: Color.fromARGB(255, 234, 89, 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150.0,
                width: 390.0,
                child: Card(
                  margin: EdgeInsets.all(5),
                  color: Color.fromARGB(255, 44, 108, 210),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Know where you \nwanna go?',
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Select a trip'),
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 245, 80, 47),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 15.0),
                                        textStyle: const TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'images/sigiriya.png',
                              height: 140.0,
                              width: 200.0,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 240.0,
                ),
                child: Text(
                  'Activities',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icons
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      // Container(
                      //   child: ListView.builder(
                      //       itemCount: activityList.length,
                      //       itemBuilder: (BuildContext ctxt, int index) {
                      //         return new Text(activityList[index]);
                      //       }
                      //       ),
                      // ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 240.0,
                ),
                child: Text(
                  'Trending Tours',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Color.fromARGB(255, 203, 213, 228),
                child: ListView.builder(
                  itemCount: trendingTours.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Container(
                              height: 120.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 220, 222),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Clicked!');
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/sigiriya.png',
                                      height: 120.0,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '${trendingTours[index]}',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 46, 65, 102),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    color: Color.fromARGB(255, 226, 224, 218),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 240.0,
                ),
                child: Text(
                  'Stays',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Color.fromARGB(255, 203, 213, 228),
                child: ListView.builder(
                  itemCount: trendingTours.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Container(
                              height: 120.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 220, 222),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Clicked!');
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/sigiriya.png',
                                      height: 120.0,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '${trendingTours[index]}',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 46, 65, 102),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    color: Color.fromARGB(255, 226, 224, 218),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  } //build

}  //touristHome
