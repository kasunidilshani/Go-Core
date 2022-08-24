import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/rendering/flex.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:isolate';
import 'dart:math';

class activePlan extends StatefulWidget {
  activePlan({Key? key}) : super(key: key);
  @override
  _activePlanState createState() => _activePlanState();
}

class _activePlanState extends State<activePlan> {
  final _formKey = GlobalKey<FormState>();


  List images = ["Colombo.jpg", "Sigiriya.png", "Kandy.jpg", "Unawatuna.jpg"];

late Response response;
  Dio dio = Dio();

  bool error = false; //for error status
  bool loading = false; //for data featching status
  String errmsg = ""; //to assing any error message from API/runtime
  // var apidata; //for decoded JSON data

  List<dynamic> _allUsers = [];
  List<dynamic> _foundUsers = [];

  getData() async {
    setState(() {
      loading = true; //make loading true to show progressindicator
    });

    String url = "http://localhost:3000/viewHotels";
    //don't use "http://localhost/" use local IP or actual live URL

    Response response = await dio.get(url);
    _allUsers = response.data; //get JSON decoded data from response
    // _allUsers= apidata;
    _foundUsers = _allUsers;
    if (response.statusCode == 200) {
      //fetch successful
      // if(apidata["error"]){ //Check if there is error given on JSON
      //     error = true;
      //     errmsg  = apidata["msg"]; //error message from JSON
      // }
    } else {
      error = true;
      errmsg = "Error while fetching data.";
    }

    loading = false;
    setState(() {}); //refresh UI
  }

  @override
  void initState() {
    getData(); //fetching data
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
      // print(_allUsers);
    } else {
      results = _allUsers
          .where((user) => user["place"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

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
                            image: AssetImage("images/" + images[index]),
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
                              _foundUsers[index]['hotel'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 200,
                              child: Text(
                                _foundUsers[index]['hotel'],
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
