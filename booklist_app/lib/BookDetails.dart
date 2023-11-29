import 'package:flutter/material.dart';


class BookDetailsPage extends StatelessWidget {
  String bookCoverImage;
  String bookName;
  String authorName;
  String rating;
  String description;

  //constructor...
  BookDetailsPage( {required this.bookCoverImage, required this.bookName, required this.authorName, required this.rating, required this.description} );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bookCoverImage,
              width: 100.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),

            Text('Book Name: $bookName'),
            Text('Author: $authorName'),
            Text('Rating: $rating'),
            SizedBox(height: 16.0),
            Text('Short Description: $description'),


            SizedBox(height: 16.0),
            
          // gotta add dropdown button here....



            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
