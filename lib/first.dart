import 'package:akshayapp/detailpage.dart';

import 'list.dart';
import 'package:flutter/material.dart';
class abb extends StatefulWidget {
  const abb({super.key});

  @override
  State<abb> createState() => _abbState();
}

class _abbState extends State<abb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:
            Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(
          itemCount:show.length,
        itemBuilder: (context, index) {
         return InkWell(
           onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailPage(name:show[index]['name'] , sub:show[index]['sub'], image:show[index]['image'], icon:show[index]['icon'])));
           },
           child: ListTile(
             title: Text(
               show[index]['name'],
             ),
             leading: CircleAvatar(
               backgroundImage:show[index]['image'] ,
               radius: 22,
             ),

             trailing:
               show[index]['icon'],

           ),
         );
            },

      ),
    );
  }
}
