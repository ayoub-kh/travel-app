import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  late final IconData icon;
  late final String text1;
  late final String text2;

  RatingCard({required this.icon,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey.withOpacity(0.3),
                offset: Offset.zero
              )
            ],
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(icon,color: Colors.black,),
        ),
        Text(
          text1,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}