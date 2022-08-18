import 'package:flutter/material.dart';
import 'package:frontend/selectMoreDetails.dart';
import 'dart:collection';
import 'activitySelection.dart';
// import 'package:frontend/selectTravelDestination.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter/src/rendering/box.dart';
// import 'package:frontend/ui/pallete.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/rendering/box.dart';


class Selecttraveldestinations extends StatefulWidget {
  HashSet selectActivity;
  Selecttraveldestinations(this.selectActivity, {Key? key}) : super(key: key);

  @override
  _SelecttraveldestinationsState createState() => _SelecttraveldestinationsState(selectActivity);
}



class _SelecttraveldestinationsState extends State<Selecttraveldestinations> {
  //final _formKey = GlobalKey<FormState>();
HashSet selectActivity;
_SelecttraveldestinationsState(this.selectActivity);

List<String> items = [];

List<String> Cities = <String>['Sigiriya', 'Anuradhapura', 'Chilaw', 'Trincomalee','Galle', 'Matara', 'Jaffna', 'Kurunegala','Rathnapura', 'Ella', 'Nuwara Eliya', 'Kandy', 'Kalpitiya', 'Hikkaduwa'];
List<String> images = ["Beauty_of_Sigiriya_by_Binuka.jpg", "Anuradhapura.jpg","000-1.jpg", "LS_BLOG16_C1_800x520.jpg","1562314610_shutterstock_728456050.jpg.jpg","9_1539849401m.jpg","Jaffna-Fort-Jaffna-Sri-Lanka.jpg","OG29.jpg","Bopath-ella-waterfall-in-Ratnapura-Sri-Lanka-.jpg", "Ella-Rock-Sri-Lanka-The-Ultimate-Ella-Rock-Hike-Guide-4-1440x960.jpg","Beauty_of_Sigiriya_by_Binuka.jpg", "hanthana-mountain-range.jpg", "fb-img-1516810886978.jpg","Kalpitiya+3.jpg","2021-09-26things08-23-53.jpg"];
  
  HashSet selectItems = new HashSet();
  bool isMultiSelectionEnabled = true;

  initState() {
    // at the beginning, all users are shown
    items = Cities;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = items;
    } else {
      results = items
          .where((items) =>
              items.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      items = results;
    });
  }
  
  @override
  Widget build(BuildContext context) {

  return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
          child: const Icon( Icons.arrow_back_ios, color: Colors.white,  ),
          onTap: () {
            Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Selectactivities()));
          } ,
          ),
          backgroundColor: const Color(0xFFF67715),
          title: Text('Where do you like to go?',style: TextStyle(color: Colors.white),),
      ),

      
      body: Stack(
        children: [
          Positioned(
                top: 28,
                left: 25,
                right: 25,
                bottom: 15,
                child: Container(
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(96, 112, 112, 112),
                    //     blurRadius: 20,
                    //     offset: const Offset(0, 5),
                    //   ),
                    // ],
                  ),
                  child: TextField(
                    onChanged: (value) => _runFilter(value),
                    style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 14, ), 
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      labelStyle: TextStyle(color: Color.fromARGB(255, 31, 30, 30)),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 2,color: Color(0xffFF5617)), 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 2,color: Color(0xffFF5617)), 
                      ),
                        labelText: 'Search your preferred destinations.....', suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),

          Positioned(
            top: 0,
            left: 10,
            right: 10,
            bottom: 480,
          child: Chip(
            label: 
            Flexible(
                  child: Text(
                    selectItems.join(', '),
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
              padding: EdgeInsets.all(5.0),
              backgroundColor: Color(0xFF1453F6),
              ) 
          ),

          Positioned(
            top: 160,
                left: 12,
                right: 12,
                bottom: 0,
          child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    //mainAxisExtent: 264,
                    ), 
                  itemCount: Cities.length,
                  itemBuilder: (context, index) {
                    final item = images[index];
                    final item2 = Cities[index];

                    return getGridItem(item,item2);
                  }
                ),
          ),

   //-- Start Button_Button--//
        Positioned(
          top: 640,
          left: 25,
          right: 25,
          bottom: 15,
          child: Container(
              margin: const EdgeInsets.all(5),
              
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Selectmoredetails(selectActivity,selectItems)));
                  },
                  child: const Text('Continue',
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
      )
        );   
}
   
String getSelectedItemCount() {
    return selectItems.isNotEmpty
        ? selectItems.length.toString() + " item selected"
        : "No item selected";
  }
  
  void doMultiSelection(String item, String item2) {
    if (isMultiSelectionEnabled) {
      setState(() {
        if (selectItems.contains(item2)) {
          selectItems.remove(item2);
        } else {
          selectItems.add(item2);
        }
      });
    } else {
      //
    }
  }

   GridTile getGridItem(String item, String item2) {
    return GridTile(
      footer: Container(
          padding: const EdgeInsets.all(7),
          alignment: Alignment.center,
          color: Color(0xFFD5E2F8),
          child:  Text(
            item2,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      child: Container(
        decoration: BoxDecoration(
                //color: Color(0xFFD5E2F8),
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.3),
                //     offset: Offset(-10.0, 10.0),
                //     blurRadius: 20.0,
                //     spreadRadius: 4.0,
                //   ),
                // ],
              ),
        child: InkWell(
          onTap: () {
            doMultiSelection(item,item2);
          },
          onLongPress: () {
            isMultiSelectionEnabled = true;
            doMultiSelection(item,item2);
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/" + item,
                color:
                    Colors.black.withOpacity(selectItems.contains(item2) ? 1 : 0),
                colorBlendMode: BlendMode.color,
              ),
              Visibility(
                  visible: selectItems.contains(item2),
                  // ignore: prefer_const_constructors
                  child: Align(
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.check,
                      color: Color(0xFFF67715),
                      size: 50,
                    ),
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
  
}