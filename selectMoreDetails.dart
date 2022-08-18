import 'dart:collection';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:frontend/sample.dart';
import 'package:frontend/tours.dart';
//import 'package:date_time_picker/selectMoreDetails.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'customizeDay.dart';
import 'destinationSelection.dart';


class Selectmoredetails extends StatefulWidget {
  HashSet selectActivity;
  HashSet selectItems;
  Selectmoredetails( this.selectActivity, this.selectItems, {Key? key}) : super(key: key);

  @override
  _SelectmoredetailsState createState() => _SelectmoredetailsState(selectActivity,selectItems);}

class _SelectmoredetailsState extends State<Selectmoredetails> {

  late String valueD;
  late String valueT;
  late String valueP;
  late String startDate;
  late String endDate;
  HashSet selectActivity;
  HashSet selectItems;
  _SelectmoredetailsState(this.selectActivity,this.selectItems);

final days = List<int>.generate(50, ((index) => index+1));
final travellers = List<int>.generate(50, ((index) => index+1)); 
final List<String> payments = ['A','B','C','D','E','F','G','H'];

String? selectedValue;

final _formKey = GlobalKey<FormState>();

  get DatePicker => null;
  TextEditingController dateInput = TextEditingController();
  TextEditingController dateInput2 = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    dateInput2.text = ""; //set the initial value of text field
    super.initState();
  }


    @override
    Widget build(BuildContext context){
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return Scaffold(
          appBar: AppBar(
        title: const Text('What ...?',style: TextStyle(color: Colors.white),),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.support_agent_sharp, color: Colors.white,), onPressed: () {  },
      //     ),
      // ],
        
        backgroundColor: const Color(0xFFF67715),
        leading: GestureDetector(
          child: const Icon( Icons.arrow_back_ios, color: Colors.white,  ),
          onTap: () {
            Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) =>  Selecttraveldestinations(selectActivity)));
          } ,
        ) ,
        
      ),
    body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

// //-- Component Loaders_Container_84 --//
//             Positioned(
//             left: 32,
//             top: 48,
//             child: Container(
//               width: 345,
//               height: 10,
//             decoration: BoxDecoration(
//                 color: Color(0xFFEAEAEB),
//                 borderRadius: BorderRadius.circular(5),
//                 ),
//             child: Stack(
//                 alignment: Alignment.center,
//                 clipBehavior: Clip.none,
//                 children:[
// //-- Component Rectangle_Container_85 --//
//     Positioned(
//             left: 0,
//             right: 0,
//             top: 0,
//             bottom: 0,
//         child: Container(
//             width: 345,
//             height: 11,
//             decoration: BoxDecoration(
//                 color: Color(0xFFEAEAEB),
//                 borderRadius: BorderRadius.circular(5),
//             ),
//         ),
//     ),

// //-- End Rectangle_Container_85 --//
// //-- Component Rectangle_Container_86 --//
//     Positioned(
//             left: 220,
//             right: 0,
//             top: 0,
//             bottom: 0,
//         child: Container(
//             //width: 10,
//             height: 10,
//             decoration: BoxDecoration(
//                 color: Color(0xFF1453F6),
//                 borderRadius: BorderRadius.circular(5),
//             ),
//         ),
//     ),

// //-- End Rectangle_Container_86 --//
//                 ]
//             ),
//         ),
//     ),
// //-- End Loaders_Container_84 --//



              const SizedBox(
                height: 8,
              ),
            const SizedBox(height: 8),
            const Text("Duration", style: TextStyle(color: Colors.black,fontSize: 24)),
            const SizedBox(height: 4),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: "Days",
                prefixIcon: const Icon(
                  Icons.confirmation_number,
                  color: Color(0xFF1453F6),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: false,
                  //fillColor: Colors.blueAccent,
                ),
              isExpanded: true,
              hint: const Text(
                'Days',
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(0xFF1453F6),
              ),
              iconSize: 30,
              dropdownColor: Color(0xFFD5E2F8),
              //  buttonHeight: 60,
              //  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              //decoration: BoxDecoration(
              //    borderRadius: BorderRadius.circular(15),
              //  ),
              items: days
                      .map((item) =>
                      DropdownMenuItem<int>(
                        value: item,
                        child: Text(
                          item.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                      .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select days.';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
                 valueD = value.toString();
                
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            ),

            const SizedBox(height: 10),

            const Text("No.of Travellers", style: TextStyle(color: Colors.black,fontSize: 24)),
            const SizedBox(height: 4),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: "Travellers",
                prefixIcon: const Icon(
                  Icons.confirmation_number,
                  color: Color(0xFF1453F6),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: false,
                  //fillColor: Colors.blueAccent,
                ),
              isExpanded: true,
              hint: const Text(
                'Travellers',
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(0xFF1453F6),
              ),
              iconSize: 30,
              dropdownColor: const Color(0xFFD5E2F8),
              
              //buttonHeight: 60,
              //buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              //dropdownDecoration: BoxDecoration(
                 //borderRadius: BorderRadius.circular(15),
               //),
              items: travellers
                      .map((item) =>
                      DropdownMenuItem<int>(
                        value: item,
                        child: Text(
                          item.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                      .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select number of travellers.';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
                valueT = value.toString();
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            ),


      const SizedBox(height: 10),
      
      const Text("Start Date", style: TextStyle(color: Colors.black,fontSize: 24)),
      Container(
        //Text("Start Date", style: TextStyle(color: Colors.black,fontSize: 24)),
            padding: EdgeInsets.all(15),
            height: 90,
            
            
            child: TextField(
              
              controller: dateInput,
              //editing controller of this TextField
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today,size: 25,color: Color(0xFF1453F6),), //icon of text field
                  labelText: "YYYY-MM-DD",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: false,
                  //fillColor: Colors.blueAccent,
                ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate1 = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));
 
                if (pickedDate1 != null) {
                  print(
                      pickedDate1); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate1 =
                      DateFormat('yyyy-MM-dd').format(pickedDate1);
                  print(
                      formattedDate1); 
                  startDate = formattedDate1;//formatted date output using intl package =>  2021-03-16
                  setState(() {
                    dateInput.text =
                        formattedDate1; //set output date to TextField value.
                  });
                } else {}
              },
            )),

            const Text("End Date", style: TextStyle(color: Colors.black,fontSize: 24)),
            Container(
            padding: EdgeInsets.all(15),
            height: 90,
            child: Center(
                child: TextField(
              controller: dateInput2,
              //editing controller of this TextField
              
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today,size: 25,color: Color(0xFF1453F6),), //icon of text field
                  labelText: "YYYY-MM-DD",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: false,
                  //fillColor: Colors.blueAccent,
                ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate);
                  endDate = formattedDate; //formatted date output using intl package =>  2021-03-16
                  setState(() {
                    dateInput2.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {}
              },
            ))),

            

            //const SizedBox(height: 10),
            const Text("Payment Method", style: TextStyle(color: Colors.black,fontSize: 24)),
            const SizedBox(height: 8),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: "Payment Method",
                prefixIcon: Icon(
                  Icons.payments,
                  color: Color(0xFF1453F6),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF1453F6), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: false,
                  //fillColor: Colors.blueAccent,
                ),
              isExpanded: true,
              hint: const Text(
                'Payments',
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(
                Icons.arrow_right,
                color: Color(0xFF1453F6),
              ),
              iconSize: 30,
              dropdownColor: Color(0xFFD5E2F8),
              // buttonHeight: 60,
              // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              // dropdownDecoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15),
              // ),
              items: payments
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                      .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select Payment Method.';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
                valueP = value.toString();
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            ),

const SizedBox(height: 25),

//-- Start Button_Button--//
        Positioned(
          top: 640,
          left: 25,
          right: 25,
          bottom: 15,
          child: Container(
              margin: const EdgeInsets.all(5),
              width: 330,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      //fixedSize: const Size(200,45), 
                      //padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      primary: Color(0xFF1453F6),
                                          
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          width: 2,
                          color: Color(0xFF1453F6),
                        ),
                      ),
                      ),
                onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Tours(valueD, valueT, valueP,selectActivity,selectItems,startDate, endDate)));
                  },
                  child: const Text('View Tour',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
              ),
            ),)
            //-- End Button_Button--//


          ],
        ),
      ),
    ),
        );
    }
}


