
import 'package:akshayapp/travelhomelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'hotellist.dart';
class eee extends StatefulWidget {
  const eee({super.key});

  @override
  State<eee> createState() => _eeeState();
}

class _eeeState extends State<eee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 305),
                child: Text("Find a place to stay",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 15,),
              SizedBox(

                height: 1000,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: uu.length,itemBuilder: (context,index){

                  return Padding(
                    padding: const EdgeInsets.only(left: 14,

                        right: 14,top: 12),

                    child: Card(
                      elevation: 7,
                      child: Container(

                        width: 580,
                        child: Column(

                          children: [
                            Container(
                              width: 580,
                              height: 110,

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(9),topLeft: Radius.circular(9),bottomLeft:Radius.circular (13),bottomRight: Radius.circular(13)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: uu[index]['imagg'])
                              ),
                            ),
                            Container(
                              width: 520,
                              height: 100,

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                              ),
                              child: ListTile(
                                title: Text(uu[index]['titlee'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                subtitle:Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text( uu[index]['subbb'],style: TextStyle(fontSize: 13),),
                                ),
                                trailing:Column(
                                  children: [
                                    Text( uu[index]['money'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text("Per night",style: TextStyle(fontSize: 12),),
                                  ],
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
