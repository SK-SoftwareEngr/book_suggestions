import 'package:book_suggestions/models/book.dart';
import 'package:flutter/material.dart';
import 'package:book_suggestions/constants_data.dart';

class ScreenBookDetail extends StatelessWidget {
  const ScreenBookDetail({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.bookTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 270,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1.0,
                color: Colors.black54,
              )),
              child: Image.network(
                book.coverImage,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              book.bookTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              book.authorName,
              style: kConsStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              book.publicationYear,
              style: kConsStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              book.bookSummary,
              style: kConsStyle,
            ),
          ],
        ),
      ),
    );
  }
}
