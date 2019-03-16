import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location:  'Images/C1.png',
            image_caption: 'Burger',
          ),

          Category(
            image_location:  'Images/C2.png',
            image_caption: 'Drinks',
          ),

          Category(
            image_location:  'Images/C3.png',
            image_caption: 'Pizza',
          ),

          Category(
            image_location:  'Images/C4.png',
            image_caption: 'Extras',
          ),

          Category(
            image_location:  'Images/C5.png',
            image_caption: 'Chicken',
          ),

          Category(
            image_location:  'Images/C6.png',
            image_caption: 'Mutton',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 50,
          height: 50,
          ),
          
          subtitle: Container(
            alignment: Alignment.topCenter,
            child : Text(image_caption),
          ) 
        ),
      ),
      ),
      
    );
  }
}