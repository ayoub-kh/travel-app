import 'package:flutter/material.dart';
import 'package:travel_app/view/ratingcard.dart';

class DetailsPage extends StatelessWidget {
  
  final String bgImage;
  final String locationText;
  final String positionText;

  DetailsPage({required this.bgImage, required this.locationText, required this.positionText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
              image: DecorationImage(
                image: AssetImage(bgImage),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed:()=> Navigator.pop(context),
                icon: Icon(Icons.chevron_left, color: Colors.white,size: 40,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locationText,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              color: Colors.orange[100],
                              size: 24,
                            ),
                             SizedBox(width: 15,),
                            Text(
                              positionText,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 24,
                              ),
                            )
                          ],
                        )
                      ]
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.withOpacity(0.3),
                      ),
                      child: Icon(Icons.favorite,color: Colors.red,),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RatingCard( icon: Icons.star_border, text1: 'Rating', text2: '4.8(3.2k)',),
                    RatingCard( icon: Icons.add_road,text1: 'Distance', text2: '300km',),
                    RatingCard( icon: Icons.restaurant_menu, text1: 'Restaurant', text2: '101 avail.',),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  'Book Your Dream Holiday On $locationText - Find Out More About Special Rates Now. Book a range of suite options and receive 30% off the best available rate. Spa. Free WiFi. Hotels in Dubai. All Inclusive Offers. Luxury Beach. Up To 50% Off. Stay-cation Packages.',
                  style: TextStyle(
                    fontSize: 18,
                    wordSpacing: 10,
                    color: Colors.black.withOpacity(0.7)
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: ButtonTheme(
        height: 60,
        minWidth: MediaQuery.of(context).size.width -60,
        alignedDropdown: true,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {  },
          elevation: null,
          color: Colors.black,
          child: Text('Book A Trip',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

