import 'package:flutter/material.dart';
class det extends StatefulWidget {
   det({super.key,required this.title,required this.sub,required this.image,required this.description});
    var title,sub,image,description;
  @override
  State<det> createState() => _detState();
}

class _detState extends State<det> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Column(
              children: [

                Container(
                width: 500,
                height: 250,

                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(45)),
                   image: DecorationImage(fit:BoxFit.cover,image:widget.image,),),

                ),
                Row(
                  children: [
                    Text(widget.title),
                    Icon(Icons.favorite_border),
                  ],
                ),

                Text(widget.sub),
                SizedBox(height: 19,),
                Text(widget.description),

              ],
            )

    );
  }
}
