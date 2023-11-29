import 'package:flutter/material.dart';
import './BookCard.dart';


class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List App'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [

          // here BookCard is be a custom class...

          BookCard(
            bookCoverImage: 'images/c.jpg',
            bookName: 'C Programming - A Modern Approach',
            authorName: 'K.N King',
            rating: '4.7',
            description: "The first edition of C Programming: A Modern Approach was popular with students and faculty alike because of its clarity and comprehensiveness as well as its trademark Q&A sections. Professor King's spiral approach made it accessible to a broad range of readers, from beginners to more advanced students.",
            versions: const ['First', 'Second', 'Third (Depricated)', 'Forth', 'Fifth', 'Sixth', 'Seventh', 'Eighth (Latest)'],
          ),
          BookCard(
            bookCoverImage: 'images/java.jpg',
            bookName: 'Big Java',
            authorName: 'Cay Hortsmann',
            rating: '4.3',
            description: "This book introduces programmers to objects at a gradual pace. The syntax boxes are revised to show typical code examples rather than abstract notation. This includes optional example modules using Alice and Greenfoot. The examples feature annotations with dos and don'ts along with cross references to more detailed explanations in the text. New tables show a large number of typical and cautionary examples. New programming and review problems are also presented that ensure a broad coverage of topics. In addition, Java 7 features are included to provide programmers with the most up-to-date information.",
            versions: const ['First (Depricated)', 'Second', 'Third', 'Forth', 'Fifth (Latest)'],
          ),
        ],
      ),
    );
  }
}