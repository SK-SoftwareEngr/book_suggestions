import 'package:book_suggestions/screens/screen_books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_suggestions/screens/screen_categories.dart';
import 'package:book_suggestions/data/sample_data.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    //brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.figtreeTextTheme(),
);

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const ScreenCategories(),
      /*routes: {
        '/bookList': (context) => ScreenBooks(
              bookTitle: 'bookTitle',
              books: SampleData()
                  .bookData
                  .where(
                    (book) => book.categories.contains('Sci-Fi'),
                  )
                  .toList(),
            ),
      },*/
    );
  }
}
