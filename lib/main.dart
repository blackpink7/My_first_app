import 'package:flutter/material.dart';
import 'package:untitled/detail_page.dart';
import 'package:untitled/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),
        home: Homepage(),
        routes: {

          Homepage.id: (context) => Homepage(),
          Detail_page.id:(context)=>Detail_page('gg',21),
        });
  }
}
