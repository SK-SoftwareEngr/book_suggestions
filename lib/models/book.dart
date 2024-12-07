class Book {
  const Book({
    required this.bookID,
    required this.categories,
    required this.bookTitle,
    required this.coverImage,
    required this.authorName,
    required this.publicationYear,
    required this.bookSummary,
  });

  final String bookID;
  final List<String> categories;
  final String bookTitle;
  final String coverImage;
  final String authorName;
  final String publicationYear;
  final String bookSummary;
}
