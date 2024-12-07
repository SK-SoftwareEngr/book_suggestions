import 'package:book_suggestions/screens/screen_books.dart';
import 'package:book_suggestions/widgets/category_items.dart';
import 'package:flutter/material.dart';
import 'package:book_suggestions/data/sample_data.dart';

import 'package:book_suggestions/models/category.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredBooks = SampleData()
        .bookData
        .where(
          (book) => book.categories.contains(category.categoryID),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ScreenBooks(
          bookTitle: category.categoryTitle,
          books: filteredBooks,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'What Should I Read Today?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        children: [
          for (final category in SampleData().availableCategories)
            CategoryItems(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            ),
        ],
      ),
    );
  }
}
