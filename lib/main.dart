import 'package:akshayapp/attractionpage.dart';
import 'package:akshayapp/bottomnavigation.dart';
import 'package:akshayapp/first.dart';
import 'package:akshayapp/grid.dart';
import 'package:akshayapp/hotelpage.dart';
import 'package:akshayapp/mario%20grid.dart';
import 'package:akshayapp/settings%20page.dart';
import 'package:akshayapp/tabbar.dart';
import 'package:akshayapp/travelapp%20homepage.dart';
import 'package:akshayapp/travelling.dart';
import 'package:akshayapp/travelling2.dart';
import 'package:akshayapp/travellingapp.dart';
import 'package:akshayapp/travelprofilepage.dart';
import 'package:flutter/material.dart';
import 'package:akshayapp/travellingapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:trrr(),
      debugShowCheckedModeBanner: false,
    );
  }
}
