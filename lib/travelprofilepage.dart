import 'package:akshayapp/profilpagelist.dart';
import 'package:akshayapp/travelhomelist.dart';
import 'package:flutter/material.dart';
class aas extends StatefulWidget {
  const aas({super.key});

  @override
  State<aas> createState() => _aasState();
}

class _aasState extends State<aas> {
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
                height: 280,width: 500,
                child: Stack(
                  children:[ Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_1280.jpg"))
                    ),

                  ),Positioned(
                    top: 150,
                    left: 187,
                    child: CircleAvatar(
                      radius: 56,
                      child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(63),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage("https://images.pexels.com/photos/2678094/pexels-photo-2678094.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))
                    ),
                      ),
                    ),
                  ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Text("Rachel Green",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 5,),
              Text("rachelaimann@example.com",style: TextStyle(color: Colors.black,fontSize: 12),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.doorbell,size: 27,color: Colors.black,),
                  SizedBox(width: 25,),
                  Icon(Icons.favorite,size: 27,color: Colors.black,),
                  SizedBox(width: 25,),
                  Icon(Icons.image,size: 27,color: Colors.black,),
                  SizedBox(width: 25,),
                  Icon(Icons.contacts,size: 27,color: Colors.black,),
                  SizedBox(width: 25,),
                ],
              ),
              SizedBox(height: 18,),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ffp.length,
                    itemBuilder: (context,index)
                {return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                          radius: 45,
                          backgroundImage: ffp [index]['imagee']


                       ),
                    ),
                     SizedBox(height: 5,),
                    ffp[index]['names'],
                  ],
                );

                },
                ),
              ),
              SizedBox(height: 21,),
              Text("My Favourite",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height: 13,),
              SizedBox(
                  height: 160,
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                 itemCount: kkk.length,itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0,
                          right: 8),

                      child:
                      Card(
                        elevation: 5,

                          child: Container(alignment: Alignment.bottomCenter,
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: kkk[index]['image'])
                            ),
                          child: Opacity(
                            opacity: 0.5,
                            child: Container(

                              width: 150,
                              height: 20,
                              alignment: Alignment.bottomCenter,
                              color: Colors.black,

                              child: Row(
                                mainAxisAlignment:  MainAxisAlignment.spaceAround,
                                children: [
                                  Text(kkk[index]['title'],style: TextStyle(color: Colors.white),),
                                  Icon(Icons.favorite,color: Colors.red,)
                                ],
                              ),
                              ),
                            ),
                          ),
                        ),


                    );
                  }
    )
    )
            ],

          ),
        ),
      ),
    );
  }
}
