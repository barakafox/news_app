import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomArticles extends StatelessWidget {

  String image;
  String title;
  String description;


   CustomArticles({super.key ,
   required this.image,
   required this.title,
   required this.description
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: Column(
        children: [
          Image.network(image),
          SizedBox(height: 30,),
          Text(title , style: TextStyle(fontWeight: FontWeight.bold),),
          Text(description),
          SizedBox(height: 35,)
        ],
      ),
    );
  }
}
