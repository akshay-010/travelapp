import 'package:akshayapp/detailedpage.dart';
import 'package:akshayapp/travelhomelist.dart';
import 'package:flutter/material.dart';
class aaa extends StatefulWidget {
  const aaa({super.key});

  @override
  State<aaa> createState() => _aaaState();
}

class _aaaState extends State<aaa> {
  var tra=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       width: double.infinity,
       height: double.infinity,
       child: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               width: 500,
               height: 250,

               decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(45)),
                 image: DecorationImage(fit:BoxFit.cover,image: NetworkImage("https://images.pexels.com/photos/1183099/pexels-photo-1183099.jpeg?cs=srgb&dl=pexels-simon-berger-1183099.jpg&fm=jpg"))
               ),child:
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 40,left: 10),
                       child: Text("Where You Want to go?",style: TextStyle(color: Colors.white,fontSize: 25),),
                     ),
                     SizedBox(height: 22,),

                     Container(
                       width: 390,
                       height: 40,
                       child: TextField(
                         controller: tra,
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           filled: true,
                           fillColor: Colors.white,
                           enabledBorder:  OutlineInputBorder(
                             borderRadius: BorderRadius.circular(25),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(25),
                           ),
                           suffixIcon: InkWell(
                             onTap: (){},
                             child: Icon(Icons.search,size: 20,)),
                           labelText: "Search....",
                           labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                           ),
                         ),
                     ),

                   ],
                 ),
             ),
             Column(
               children: [
                 Row(
                   children: [
                     SizedBox(height: 44,),
                     Padding(
                       padding: const EdgeInsets.only(left: 8),
                       child: Text("Suggestions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                     SizedBox(width: 350,),
                     Icon(Icons.arrow_forward)
                   ],
                 ),
                 SizedBox(height: 20,),
                SizedBox(
                      height: 150,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: kkk.length,itemBuilder: (context,index){
                   return InkWell(
                     onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>det(title:kkk[index]['title'],image:kkk[index]['image'],sub:kkk[index]['sub'],description:kkk[index]['description'])));
                     },
                     child: Container(
                       
                       child: Padding(
                         padding: const EdgeInsets.only(left: 8.0,
                         right: 8),
                         child: Card(
                           elevation: 7,
                           child: Container(

                             width: 100,
                             child: Column(

                               children: [
                                 Container(
                                   width: 120,
                                   height: 93,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                     image: DecorationImage(
                                         fit: BoxFit.cover,
                                         image: kkk[index]['image'])
                                   ),
                                 ),
                                 Container(
                                   width: 120,
                                   height: 36,

                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                   ),
                                   child: Column(

                                     children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 21,top: 2),
                                        child: Text( kkk[index]['title'],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 21,top: 2),
                                        child: Text( kkk[index]['sub'],),
                                      ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   );
                 },),
                         ),

                 SizedBox(height: 10,),

                 Column(
                   children: [
                     Row(
                       children: [
                         SizedBox(height: 44,),
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: Text("Top Rated",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                         ),
                         SizedBox(width: 350,),
                         Icon(Icons.arrow_forward)
                       ],
                     ),
                     SizedBox(height: 20,),
                     SizedBox(
                       height: 150,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: kkk.length,itemBuilder: (context,index){
                         return Padding(
                           padding: const EdgeInsets.only(left: 8.0,
                               right: 8),
                           child: Card(
                             elevation: 7,
                             child: Container(

                               width: 100,
                               child: Column(

                                 children: [
                                   Container(
                                     width: 120,
                                     height: 93,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                         image: DecorationImage(
                                             fit: BoxFit.cover,
                                             image: kkk[index]['image'])
                                     ),
                                   ),
                                   Container(
                                     width: 120,
                                     height: 36,

                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                     ),
                                     child: Column(

                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.only(right: 21,top: 2),
                                           child: Text( kkk[index]['title'],),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.only(right: 21,top: 2),
                                           child: Text( kkk[index]['sub'],),
                                         ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         );
                       },),
                     ),


           ],
             )
            ],
      ),],
    ),
       ),),
    );
  }
}
