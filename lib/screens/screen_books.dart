import 'package:book_suggestions/data/sample_data.dart';
import 'package:book_suggestions/models/book.dart';
import 'package:book_suggestions/screens/screen_book_detail.dart';
import 'package:flutter/material.dart';

class ScreenBooks extends StatelessWidget {
  const ScreenBooks({
    super.key,
    required this.bookTitle,
    required this.books,
  });

  final String bookTitle;
  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Nothing Here!'),
        ],
      ),
    );

    if (books.isNotEmpty) {
      content = ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(books[index].bookTitle),
              subtitle: Text(books[index].authorName),
              leading: Image.network(books[index].coverImage),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenBookDetail(
                      book: books[index], // Pass the selected book
                    ),
                  ),
                );
              });
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          bookTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: content,
    );
  }
}
