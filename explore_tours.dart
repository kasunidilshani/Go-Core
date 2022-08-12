import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExploreTours extends StatefulWidget {
  const ExploreTours({Key? key}) : super(key: key);

  @override
  State<ExploreTours> createState() => _ExploreToursState();
}

class _ExploreToursState extends State<ExploreTours> {
  List Cities = ["Colombo", "Sigiriya", "Kandy", "Unawatuna"];

  List Descriptions = [
    "Colombo is the executive and judicial capital and largest city of Sri Lanka by population.....",
    "Sigiriya is an ancient rock fortress located in the Matale District near the town of Dambulla in the Central Province, Sri Lanka.....",
    "Kandy is a major city in Sri Lanka located in the Central Province. It was the last capital of the ancient kings' era of Sri Lanka.....",
    "Unawatuna main beach is one of the most famous beaches in the country and is popular with both tourists and locals alike.....",
  ];

  List images = ["Colombo.jpg", "Sigiriya.jpg", "Kandy.jpg", "Unawatuna.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => Container(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Card(
            margin: EdgeInsets.only(bottom: 20),
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 360,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 226, 248),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(-10.0, 10.0),
                    blurRadius: 20.0,
                    spreadRadius: 4.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("img/" + images[index]),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Cities[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 200,
                              child: Text(
                                Descriptions[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
