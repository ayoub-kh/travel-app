import 'package:flutter/material.dart';

class Trip_card extends StatelessWidget {
  
  late final String bg_image;
  late final String location;
  late final String position;
  
  Trip_card({required this.bg_image, required this.location,required this.position});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(bg_image,fit: BoxFit.cover,height: 150,width: 220,),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Icon(Icons.favorite_border,color: Colors.white,),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.my_location,
                          color: Colors.orange[100],
                          size: 15,
                        ),
                        Text(
                          position,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}