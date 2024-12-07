import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.categoryID,
    required this.categoryTitle,
    required this.categoryColor,
  });

  final String categoryID;
  final String categoryTitle;
  final Color categoryColor;
}
