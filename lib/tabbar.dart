import 'package:flutter/material.dart';
class tabb extends StatefulWidget {
  const tabb({super.key});

  @override
  State<tabb> createState() => _tabbState();
}

class _tabbState extends State<tabb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar",style: TextStyle(color: Colors.white,fontSize: 30),),
            bottom: TabBar(
                tabs:[
                  Tab(icon: Icon(Icons.car_crash),),
                  Tab(icon: Icon(Icons.bike_scooter),),
                  Tab(icon: Icon(Icons.directions_boat),),
                ] )
          ),
          body: TabBarView(
              children:[

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.car_crash,size: 50,),
                    SizedBox(height: 10,),
                    Text("Car",style: TextStyle(fontSize: 35),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.motorcycle,size: 50,),
                    SizedBox(height: 10,),
                    Text("Bicycle",style: TextStyle(fontSize: 35),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_boat,size: 50,),
                    SizedBox(height: 10,),
                    Text("Boat",style: TextStyle(fontSize: 35),),

                  ],
                ),

              ] ),
        ));
  }
}
