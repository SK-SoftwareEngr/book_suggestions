import 'package:book_suggestions/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /*onTap: () {
        Navigator.pushNamed(context, '/bookList');
      },*/
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          gradient: LinearGradient(
            colors: [
              category.categoryColor.withOpacity(0.5),
              category.categoryColor
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Text(
          category.categoryTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
