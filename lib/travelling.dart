import 'package:flutter/material.dart';
class tra extends StatefulWidget {
  const tra({super.key});

  @override
  State<tra> createState() => _traState();
}

class _traState extends State<tra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://media.istockphoto.com/id/1419036788/photo/young-traveler-man-dressed-in-yellow-jacket-crosses-hiking-on-an-impressive-wooden-and-metal.webp?b=1&s=170667a&w=0&k=20&c=xFONyjCT7dhh8XUFzUTSsOUZnwMeOIhf63Xhf3VKgEw="))
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.menu,color: Colors.white,size: 28,),
                    ),
                    SizedBox(width: 130,),
                    Text("Trending",style: TextStyle(fontSize:30,color: Colors.white ),),
                    SizedBox(width: 25,),
                    Icon(Icons.arrow_downward_sharp,size: 20,color: Colors.white,),
                  ],
                ),
                SizedBox(height: 440,),
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text("Travelling",style: TextStyle(fontSize: 40,color: Colors.white),),
                ),
                SizedBox(height: 13,),
                InkWell(
                  child: Container(
                    height: 31,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                     alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text("Where you what to go?",style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 600,
              child: Container(
                height: 100,
                width: 500,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                   Column(
                     children: [
                       Icon(Icons.car_crash,color: Colors.white,),
                       Text("Car",style: TextStyle(color: Colors.white),)
                     ],
                   ),
                      Column(

                        children: [
                          Icon(Icons.flight,color: Colors.white,),
                          Text("flight",style: TextStyle(color: Colors.white,fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.directions_boat,color: Colors.white,),
                          Text("boat",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  ],

                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
