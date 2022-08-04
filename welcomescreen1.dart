import 'package:flutter/material.dart';
import '../../ui/export.dart';


class Welcomescreen1 extends StatefulWidget {
  const Welcomescreen1({Key? key}) : super(key: key);

  @override
  _Welcomescreen1State createState() => _Welcomescreen1State();}

class _Welcomescreen1State extends State<Welcomescreen1> {
    @override
    Widget build(BuildContext context){
        // double width = MediaQuery.of(context).size.width;
        // double height = MediaQuery.of(context).size.height;
        return Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(2),
          child: Image.asset(
          'assets/O_ImageView_3-297x296.png',
          width: 150,
          height: 150,
          //fit: BoxFit.fitHeight,
          ),

        );
    }
}
