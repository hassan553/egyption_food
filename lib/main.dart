import 'package:egyption_food/screen/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(app());

class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
            fontWeight: FontWeight.bold,

            fontSize: 20,
            color:  Colors.orange,
          ),
            bodyText2: TextStyle(
              fontWeight: FontWeight.bold,

              fontSize: 30,
              color: Colors.orange,
            ),
          ),
          appBarTheme:  AppBarTheme(
            centerTitle: true,
            backgroundColor: HexColor('333739'),
            titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
color: Colors.orange,
            ),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
