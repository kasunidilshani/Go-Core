// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gocore_frontend/pages/tabbar_pages/explore_cabs.dart';
import 'package:gocore_frontend/pages/tabbar_pages/explore_hotels.dart';
import 'package:gocore_frontend/pages/tabbar_pages/explore_tours.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  List Cities = ["Colombo", "Sigiriya", "Kandy", "Unawatuna"];

  List Descriptions = [
    "Colombo is the executive and judicial capital and largest city of Sri Lanka by population.....",
    "Sigiriya is an ancient rock fortress located in the Matale District near the town of Dambulla in the Central Province, Sri Lanka.....",
    "Kandy is a major city in Sri Lanka located in the Central Province. It was the last capital of the ancient kings' era of Sri Lanka.....",
    "Unawatuna main beach is one of the most famous beaches in the country and is popular with both tourists and locals alike.....",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        //searchbar
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Container(
            // ignore: sort_child_properties_last
            child: TextField(
              style: TextStyle(
                color: Color.fromARGB(255, 31, 30, 30),
                fontSize: 12,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  filled: true,
                  labelStyle: TextStyle(color: Color.fromARGB(255, 31, 30, 30)),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(width: 2, color: Color(0xFFFF5617)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(width: 2, color: Color(0xffFF5617)),
                  ),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search.....',
                  suffixIcon: Icon(Icons.tune_rounded)),
            ),
            decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(96, 112, 112, 112),
                  blurRadius: 20,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //tab bar
        Container(
          width: 290,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: CupertinoColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Align(
            alignment: Alignment.center,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 30, right: 30),
              indicatorPadding: const EdgeInsets.all(7),
              indicator: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 5, 94, 249)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 5, 94, 249)),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              controller: _tabController,
              tabs: const [
                Tab(text: "Tours"),
                Tab(text: "Hotels"),
                Tab(text: "Cabs"),
              ],
            ),
          ),
        ),
        // Expanded(
        //   child: ListView(
        //     padding: EdgeInsets.only(left: 25),
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.only(top: 30),
        //         height: 230,
        //         padding: EdgeInsets.only(right: 20),
        //         child: Stack(
        //           children: [
        //             Positioned(
        //               child: Material(
        //                 child: Container(
        //                     height: 150,
        //                     width: 360,
        //                     decoration: BoxDecoration(
        //                       color: Color.fromARGB(255, 213, 226, 248),
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                           color: Colors.grey.withOpacity(0.3),
        //                           offset: Offset(-10.0, 10.0),
        //                           blurRadius: 20.0,
        //                           spreadRadius: 4.0,
        //                         ),
        //                       ],
        //                     )),
        //               ),
        //             ),
        //             Positioned(
        //               child: Card(
        //                 margin: const EdgeInsets.only(top: 0),
        //                 shadowColor: Colors.grey.withOpacity(0.5),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //                 child: Container(
        //                   height: 150,
        //                   width: 150,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10.0),
        //                     image: DecorationImage(
        //                       fit: BoxFit.fill,
        //                       image: AssetImage("img/Colombo.jpg"),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Positioned(
        //               top: 20,
        //               left: 160,
        //               child: Container(
        //                 height: 150,
        //                 width: 180,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Colombo",
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         color: Colors.black,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: 12,
        //                     ),
        //                     Text(
        //                       "Colombo is the executive and judicial capital and largest city of Sri Lanka by population.....",
        //                       style: TextStyle(
        //                         fontSize: 14,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         //     Text("There"),
        //         //     Text("Bye")
        //         //   ],
        //         // ),
        //       ),
        //       Container(
        //         height: 230,
        //         padding: EdgeInsets.only(right: 20),
        //         child: Stack(
        //           children: [
        //             Positioned(
        //               child: Material(
        //                 child: Container(
        //                     height: 150,
        //                     width: 360,
        //                     decoration: BoxDecoration(
        //                       color: Color.fromARGB(255, 213, 226, 248),
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                           color: Colors.grey.withOpacity(0.3),
        //                           offset: Offset(-10.0, 10.0),
        //                           blurRadius: 20.0,
        //                           spreadRadius: 4.0,
        //                         ),
        //                       ],
        //                     )),
        //               ),
        //             ),
        //             Positioned(
        //               child: Card(
        //                 margin: const EdgeInsets.only(top: 0),
        //                 shadowColor: Colors.grey.withOpacity(0.5),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //                 child: Container(
        //                   height: 150,
        //                   width: 150,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10.0),
        //                     image: DecorationImage(
        //                       fit: BoxFit.fill,
        //                       image: AssetImage("img/Sigiriya.jpg"),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Positioned(
        //               top: 20,
        //               left: 160,
        //               child: Container(
        //                 height: 150,
        //                 width: 180,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Sigiriya",
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         color: Colors.black,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: 12,
        //                     ),
        //                     Text(
        //                       "Sigiriya is an ancient rock fortress located in the Matale District near the town of Dambulla in the Central Province, Sri Lanka.....",
        //                       style: TextStyle(
        //                         fontSize: 14,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         //     Text("There"),
        //         //     Text("Bye")
        //         //   ],
        //         // ),
        //       ),
        //       Container(
        //         height: 230,
        //         padding: EdgeInsets.only(right: 20),
        //         child: Stack(
        //           children: [
        //             Positioned(
        //               child: Material(
        //                 child: Container(
        //                     height: 150,
        //                     width: 360,
        //                     decoration: BoxDecoration(
        //                       color: Color.fromARGB(255, 213, 226, 248),
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                           color: Colors.grey.withOpacity(0.3),
        //                           offset: Offset(-10.0, 10.0),
        //                           blurRadius: 20.0,
        //                           spreadRadius: 4.0,
        //                         ),
        //                       ],
        //                     )),
        //               ),
        //             ),
        //             Positioned(
        //               child: Card(
        //                 margin: const EdgeInsets.only(top: 0),
        //                 shadowColor: Colors.grey.withOpacity(0.5),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //                 child: Container(
        //                   height: 150,
        //                   width: 150,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10.0),
        //                     image: DecorationImage(
        //                       fit: BoxFit.fill,
        //                       image: AssetImage("img/Kandy.jpg"),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Positioned(
        //               top: 20,
        //               left: 160,
        //               child: Container(
        //                 height: 150,
        //                 width: 180,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Kandy",
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         color: Colors.black,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: 12,
        //                     ),
        //                     Text(
        //                       "Kandy is a major city in Sri Lanka located in the Central Province. It was the last capital of the ancient kings' era of Sri Lanka.....",
        //                       style: TextStyle(
        //                         fontSize: 14,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         //     Text("There"),
        //         //     Text("Bye")
        //         //   ],
        //         // ),
        //       ),
        //       Container(
        //         height: 230,
        //         padding: EdgeInsets.only(right: 20),
        //         child: Stack(
        //           children: [
        //             Positioned(
        //               child: Material(
        //                 child: Container(
        //                     height: 150,
        //                     width: 360,
        //                     decoration: BoxDecoration(
        //                       color: Color.fromARGB(255, 213, 226, 248),
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                           color: Colors.grey.withOpacity(0.3),
        //                           offset: Offset(-10.0, 10.0),
        //                           blurRadius: 20.0,
        //                           spreadRadius: 4.0,
        //                         ),
        //                       ],
        //                     )),
        //               ),
        //             ),
        //             Positioned(
        //               child: Card(
        //                 margin: const EdgeInsets.only(top: 0),
        //                 shadowColor: Colors.grey.withOpacity(0.5),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //                 child: Container(
        //                   height: 150,
        //                   width: 150,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10.0),
        //                     image: DecorationImage(
        //                       fit: BoxFit.fill,
        //                       image: AssetImage("img/Unawatuna.jpg"),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Positioned(
        //               top: 20,
        //               left: 160,
        //               child: Container(
        //                 height: 150,
        //                 width: 180,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Unawatuna",
        //                       style: TextStyle(
        //                         fontSize: 20,
        //                         color: Colors.black,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: 12,
        //                     ),
        //                     Text(
        //                       "Unawatuna main beach is one of the most famous beaches in the country and is popular with both tourists and locals alike.....",
        //                       style: TextStyle(
        //                         fontSize: 14,
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         //     Text("There"),
        //         //     Text("Bye")
        //         //   ],
        //         // ),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(height: 20),
        Container(
          height: 543,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ExploreTours(),
              ExploreHotels(),
              ExploreCabs(),
            ],
          ),
        ),
      ],
    ));
  }
}
