import 'package:flutter/material.dart';
import './BookDetails.dart';


class BookCard extends StatelessWidget {
  String bookCoverImage;
  String bookName;
  String authorName;
  String rating;
  String description;


  // constructor...
  BookCard( {required this.bookCoverImage, required this.bookName, required this.authorName, required this.rating, required this.description} );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(
              bookName: bookName,
              bookCoverImage: bookCoverImage,
              authorName: authorName,
              rating: rating,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.asset(bookCoverImage, width: 50.0, height: 100.0,
          ),
          title: Text(bookName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(authorName),
              Text('Rating: $rating'),
            ],
          ),
        ),
      ),
    );
  }
}