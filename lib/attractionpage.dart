import 'package:akshayapp/attractionlist.dart';
import 'package:akshayapp/travelhomelist.dart';
import 'package:flutter/material.dart';
class eraa extends StatefulWidget {
  const eraa({super.key});

  @override
  State<eraa> createState() => _eraaState();
}

class _eraaState extends State<eraa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 44,),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("Nature",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    SizedBox(width: 367,),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 198,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ww.length,itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 26.0,
                          right: 8),
                      child: Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(

                          width: 200,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 370,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: ww[index]['imago'])
                                ),
                              ),
                              Container(
                                width: 290,
                                height: 52,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( ww[index]['titl'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( ww[index]['subb'],style: TextStyle(fontSize: 13),),
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


                Row(
                  children: [
                    SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("History",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    SizedBox(width: 365,),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: 198,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: www.length,itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 26.0,
                          right: 8),
                      child: Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(

                          width: 200,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 370,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: www[index]['imago'])
                                ),
                              ),
                              Container(
                                width: 290,
                                height: 52,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                ),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( www[index]['titl'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( www[index]['subb'],),
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

                Row(
                  children: [
                    SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("Religious",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    SizedBox(width: 350,),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: 198,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: wwww.length,itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 26.0,
                          right: 8),
                      child: Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(

                          width: 200,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 370,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: wwww[index]['imago'])
                                ),
                              ),
                              Container(
                                width: 290,
                                height: 52,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                ),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( wwww[index]['titl'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 138,top: 2),
                                      child: Text( wwww[index]['subb'],),
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
            ),
          ),
          ),
    );
  }
}
