import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gocore_front/services/authservice.dart';
import 'package:gocore_front/user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/rendering/flex.dart';
// import 'package:frontend/signup.dart';
// import 'package:frontend/dashboard.dart';
// import 'package:frontend/user.dart';


class Signin1 extends StatefulWidget {
Signin1({Key? key}) : super(key: key);
  @override
  _Signin1State createState() => _Signin1State();
}

class _Signin1State extends State<Signin1> {
  final _formKey = GlobalKey<FormState>();

// Future save() async {
//     var res = await http.post("http://localhost:3000/signin",
//         headers: <String, String>{
//           'Context-Type': 'application/json;charSet=UTF-8'
//         },
//         body: <String, String>{
//           'username': user.username,
//           'password': user.password
//         });
//     print(res.body);
//     Navigator.push(
//         context, new MaterialPageRoute(builder: (context) => Dashboard()));
//   }

  // User user = User('', '');
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "img": "sigiriya.jpg", "name": "Sigiriya", "age": "The proximity of the forest and the sea in this city has given a special beauty to this city ..."},
    {"id": 2, "img": "ella.jpg", "name": "Adam’s Peak", "age": "It is one of the most pleasant and airy parts of Iran with high mountains, forests and lush summers ..."},
    {"id": 3, "img": "sigiriya.jpg", "name": "Ella Rock", "age": "indescribable sense of freshness of this city are among the things that attract tourists ..."},
    {"id": 4, "img": "sigiriya.jpg", "name": "Hanthana", "age": "k"},
    {"id": 5, "img": "sigiriya.jpg", "name": "Candy", "age": "k"},
    {"id": 6, "img": "sigiriya.jpg", "name": "Colin", "age": "k"},
    {"id": 7, "img": "sigiriya.jpg", "name": "Audra", "age": "k"},
    {"id": 8, "img": "sigiriya.jpg", "name": "Banana", "age": "k"},
    {"id": 9, "img": "sigiriya.jpg", "name": "Caversky", "age": "k"},
    {"id": 10, "img": "sigiriya.jpg", "name": "Becky", "age": "k"},
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: 
      Container(
        // child: Padding(
        //   padding: const EdgeInsets.all(10),
          child: Column(
            children: [
               Positioned(
              top: 0,
              child: Image.asset('images/hike.jpg',height: 210, width:455,)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Container(
                  child: TextField(
                    onChanged: (value) => _runFilter(value),
                    style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 14, ), 
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      labelStyle: TextStyle(color: Color.fromARGB(255, 31, 30, 30)),
                      fillColor: Color(0xffFF5617),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 0,color: Color(0xffFF5617)), 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 0,color: Color(0xffFF5617)), 
                      ),
                        labelText: 'Search your hiking destinations.....', suffixIcon: Icon(Icons.search)),
                  ),
                   decoration: BoxDecoration(
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
              Expanded(
                child: _foundUsers.isNotEmpty
                    ? Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: ListView.builder(
                          itemCount: _foundUsers.length,
                          itemBuilder: (context, index) => Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),),
                             child: Container(
                              //  padding: new EdgeInsets.all(15.0),
                              height:150,
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Expanded(
                                          child:ClipRRect(borderRadius: BorderRadius.circular(20.0),child: Image.asset('images/sigiriya.jpg')),
                                          flex:2 ,
                                            ),
                                            ),
                                    Expanded(
                                      child:Container(
                                        padding: new EdgeInsets.all(15.0),
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 5,
                                              child: ListTile(
                                                title: Padding(
                                                  padding: const EdgeInsets.only(bottom: 10.0),
                                                  child: Text(_foundUsers[index]['name'], style: GoogleFonts.openSans(
                                                        fontSize: 20.0,
                                                        fontWeight: FontWeight.w700,),),
                                                ),
                                                subtitle: Text(_foundUsers[index]['age']),
                                              ),
                                            ),
                                                  ],
                                                ),
                                              ),
                                    )

                                    ],
                                  ),
                                ),
                                  key: ValueKey(_foundUsers[index]["id"]),
                                  color: Color.fromARGB(255, 213, 224, 243),
                                  elevation: 4,
                                  margin: const EdgeInsets.symmetric(vertical: 10,),
                                  // child: ListTile(
                                  //   leading: Text(
                                  //     _foundUsers[index]["id"].toString(),
                                  //     style: const TextStyle(fontSize: 24),
                                  //   ),
                                  //   title: Text(_foundUsers[index]['name']),
                                  //   subtitle: Text(
                                  //       '${_foundUsers[index]["age"].toString()} years old'),
                                  // ),
                          ),
                        ),
                    )
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 14),
                      ),
              ),
            ],
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
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // onTap: _onItemTapped,
       
      ),
      );
  
}

}