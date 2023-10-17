import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  DetailPage({super.key,required this.name,required this.sub,required this.image,required this.icon});
var name,sub,image,icon;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.name),

          Text(widget.sub)
        ],
      ),
    );
  }
}
