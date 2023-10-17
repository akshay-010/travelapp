import 'package:flutter/material.dart';
import 'grid1.dart';
class see extends StatefulWidget {
  const see({super.key});

  @override
  State<see> createState() => _seeState();
}

class _seeState extends State<see> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://t4.ftcdn.net/jpg/05/88/03/69/360_F_588036969_taMKDUD9sM6oAPDs1oaciJe1BwCFERl7.jpg'))
        ),



           child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24,),
            Padding(

              padding: const EdgeInsets.only(left: 30),
              child: Text("My Dasboard",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            SizedBox(height: 25,),
            
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,indext)
              {
                return

                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15,top: 15),
                    child: Card(
                      child: Container(
                      height: 10,
                      width: 10,
                      decoration:
                      BoxDecoration(
                        borderRadius:BorderRadius.circular(15),

                        color: Colors.white,

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ser[indext]['icon'],
                          SizedBox(height: 18),
                          ser[indext]['name'],
                        ],
                      ),
                ),
                    ),
                  );
              }
              ),
            ),
          ],
        ),
      ),
      

    );
  }
}
