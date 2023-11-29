import 'package:flutter/material.dart';


class BookDetailsPage extends StatelessWidget {
  String bookCoverImage;
  String bookName;
  String authorName;
  String rating;
  String description;
  final List<String> versions;

  //constructor...
  BookDetailsPage( {required this.bookCoverImage, required this.bookName, required this.authorName, required this.rating, required this.description, required this.versions} );

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


            DropdownButton<String>(
              items: versions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              hint: Text('Available Editions'),
            ),


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
