import 'package:akshayapp/hotelpage.dart';
import 'package:akshayapp/travelapp%20homepage.dart';
import 'package:akshayapp/travelprofilepage.dart';
import 'package:akshayapp/attractionpage.dart';
import 'package:flutter/material.dart';

class taaa extends StatefulWidget {
  const taaa({super.key});

  @override
  State<taaa> createState() => _taaaState();
}

class _taaaState extends State<taaa> {
  List maa=[
    aaa(),
    eee(),
    aas(),
    eraa(),
  ];
  var td=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.location_on,color: Colors.black,),label: 'Attraction'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin,color: Colors.black,),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.hotel,color: Colors.black,),label: 'Hotel'),

      ],fixedColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          showUnselectedLabels: false,
       currentIndex: td,
       onTap: (
       int index
       ){
          setState(() {
            td=index;
          });
       }
      ),
      body: maa.elementAt(td),
    );
  }
}
