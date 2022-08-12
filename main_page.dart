import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gocore_frontend/pages/navpages/booking_page.dart';
import 'package:gocore_frontend/pages/navpages/explore_page.dart';
import 'package:gocore_frontend/pages/navpages/home_page.dart';
import 'package:gocore_frontend/pages/navpages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    ExplorePage(),
    BookingPage(),
    ProfilePage(),
  ];

  // int currentIndex = 0;

  // void onTap(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[1],
      bottomNavigationBar: BottomNavigationBar(
        // onTap: onTap,
        currentIndex: 1,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.explore)),
          BottomNavigationBarItem(label: 'Booking', icon: Icon(Icons.hotel)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
