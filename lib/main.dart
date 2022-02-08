import 'package:flutter/material.dart';
import 'package:kwikcode/page/HomePage.dart';
import 'package:kwikcode/page/Test.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return Sizer(
    //builder: (context, orientation, deviceType) {
    return MaterialApp(
        title: 'KwikCode',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: FirstPage(),
        initialRoute: '/HomePage',
        routes: {
          '/HomePage': (context) => HomePage(),
          '/test': (context) => Test(),
        });
    //});
  }
}
