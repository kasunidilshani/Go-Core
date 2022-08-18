import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TouristHome extends StatefulWidget {
  const TouristHome({Key? key}) : super(key: key);

  @override
  State<TouristHome> createState() => _TouristHomeState();
}

class _TouristHomeState extends State<TouristHome> {
  List activities = [
    "balloning.png",
    "hiking.png",
    "kayaking.png",
    "snorkling.png",
    "surfing.png"
  ];

  List tours = ["Colombo.jpg", "Kandy.jpg", "Sigiriya.jpg", "Unawatuna.jpg"];

  List tour_names = ["Colombo", "Kandy", "Sigiriya", "Unawatuna"];

  List stays = [
    "Araliya.jpg",
    "Habarana.jpg",
    "HikkaTranz.jpg",
    "JetwingJ.jpg"
  ];

  List hotel_names = [
    "Araliya Resort",
    "Habarana",
    "Hikka Tranz",
    "Jetwing Jaffna"
  ];

  List names = ["Ballooning", "Hiking", "Kayaking", "Snorkeling", "Surfing"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("images/dummy.png"),
                        ),
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Hello\nJack!",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.notifications_on,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 23, 2, 247),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Know where you\nwanna go?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromARGB(255, 245, 80, 47),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15.0),
                                    textStyle: const TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold)),
                                child: const Text('Select a trip'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 81.35),
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/hiking.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Activities",
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                    itemCount: activities.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/" + activities[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              child: Text(
                                names[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Trending Tours",
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 130,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                    itemCount: tours.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('Clicked!');
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/" + tours[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                tour_names[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Stays",
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 130,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                    itemCount: tours.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('Clicked!');
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/" + stays[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                hotel_names[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
