import 'package:akshayapp/bottomnavigation.dart';
import 'package:akshayapp/travelapp%20homepage.dart';
import 'package:flutter/material.dart';
class trrr extends StatefulWidget {
  const trrr({super.key});

  @override
  State<trrr> createState() => _trrrState();
}

class _trrrState extends State<trrr> {
  var faa=TextEditingController();
  bool taa=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://images.pexels.com/photos/2132126/pexels-photo-2132126.jpeg?cs=srgb&dl=pexels-quang-nguyen-vinh-2132126.jpg&fm=jpg')),
        ),

        child: Column(
          children: [
            SizedBox(height: 40,),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 28,right: 28),
              child: TextField(
                   controller: faa,
                keyboardType: TextInputType.text,
                decoration:InputDecoration(
                  suffixIcon:Icon(Icons.attachment) ,
                  labelText:' Email',

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28,right: 28),
              child: TextField(
                keyboardType: TextInputType.text,
                obscuringCharacter: "*",
                obscureText: !taa,
                decoration:InputDecoration(
                  suffixIcon:
                  IconButton(onPressed:(){
                    setState(() {
                      taa=!taa;
                    });
                  }, icon: Icon(taa?Icons.visibility:Icons.visibility_off,)),
                  
                  labelText:' Password',
                ),
              ),
            ),
            SizedBox(height: 80,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>taaa()));
              },
              child: Container(
                width: 400,
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text("Login",style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 45,),
            TextButton(onPressed: (){}, child:
            Text("Forgot password",style: TextStyle(color: Colors.black),)
            ),
            SizedBox(height: 130,),

            InkWell(
              child: Container(

                width: 400,
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png',width: 23,),
                    ),
                      SizedBox(width: 58,),
                    Text("Sign in with google",style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25,),

            InkWell(
              child: Container(

                width: 400,
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/4e/86/25/4e862546-40a5-6e3d-5d3e-46b73b6d9bbc/Icon-Production-0-0-1x_U007emarketing-0-7-0-85-220.png/1200x630wa.png',width: 65,),
                    ),
                    SizedBox(width: 36,),
                    Text("Sign in with Facebook",style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
