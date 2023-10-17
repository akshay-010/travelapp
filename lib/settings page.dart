import 'package:flutter/material.dart';
class taa extends StatefulWidget {
  const taa ({super.key});

  @override
  State<taa> createState() => _taaState();
}

class _taaState extends State<taa> {
  bool ami=false;
  bool aami=false;
  bool ak=false;
  bool akk=false;
  bool akkk=false;
  var mia;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,

        title: Text("Settings"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Toggle",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 16,),
            ListTile(
              title: Text("Cellular data",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Switch(value: ami, onChanged: (val){
                setState((){
                  ami=val!;
                });
              }),
            ),
            Divider(thickness: 2.0,),

            ListTile(
              title: Text("Wifi",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Switch(value: aami, onChanged: (val){
                setState((){
                  aami=val!;
                });
              }),
            ),
            Divider(thickness: 2.0,),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Single Check",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              title: Text("Allow notification",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Radio(value: 'allow', groupValue: mia, onChanged: (value){
                setState(() {
                  mia=value;
                });
              }),
            ),
            Divider(thickness: 2.0,),
            SizedBox(height: 10,),

            ListTile(
              title: Text("Turn off  notification",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Radio(value: 'turn off', groupValue: mia, onChanged: (value){
                setState(() {
                  mia=value;
                });
              }),
            ),

            Divider(thickness: 2.0,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Multiple text",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),

            ListTile(
              title: Text("Microphone access",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Checkbox(value: ak, onChanged: (itt){
                setState(() {
                  ak=itt!;
                });
              }),
            ),

            ListTile(
              title: Text("Microphone access",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Checkbox(value: akk, onChanged: (itt){
                setState(() {
                  akk=itt!;
                });
              }),
            ),

            ListTile(
              title: Text("Microphone access",style: TextStyle(fontSize: 14,color: Colors.black),),
              trailing: Checkbox(value: akkk, onChanged: (itt){
                setState(() {
                  akkk=itt!;
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
