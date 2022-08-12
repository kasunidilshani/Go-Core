import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExploreHotels extends StatefulWidget {
  const ExploreHotels({Key? key}) : super(key: key);

  @override
  State<ExploreHotels> createState() => _ExploreHotelsState();
}

class _ExploreHotelsState extends State<ExploreHotels> {
  List Hotels = [
    "Hikka Tranz Cinnamon",
    "Habarana Lodge",
    "Araliya Green Hills",
    "Jetwing Jaffna"
  ];

  List Descriptions = [
    "This vibrant hotel is a 2-minute walk from the white-domed Susilachara Temple and 5 km from the Tsunami Museum......",
    "Located amid green forests, the Cinnamon Lodge Habarana offers air-conditioned rooms with a private balcony......",
    "In an elegant manor on a leafy hillside property overlooking farmland, this hotel is a 5-minute walk from the gardens of Victoria Park......",
    "Set in the midst of the social city of Jaffna, North Gate by Jetwing is a contemporary, present day city lodging with luxury facilities.....",
  ];

  List images = [
    "HikkaTranz.jpg",
    "Habarana.jpg",
    "Araliya.jpg",
    "JetwingJ.jpg"
  ];

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
                              Hotels[index],
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
