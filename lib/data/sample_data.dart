import 'package:book_suggestions/models/book.dart';
import 'package:book_suggestions/models/category.dart';
import 'package:flutter/material.dart';

class SampleData {
  List<Category> availableCategories = const [
    Category(
      categoryID: '1',
      categoryTitle: 'Mystery',
      categoryColor: Colors.red,
    ),
    Category(
      categoryID: '2',
      categoryTitle: 'Sci-Fi',
      categoryColor: Colors.blue,
    ),
    Category(
      categoryID: '3',
      categoryTitle: 'True Crime',
      categoryColor: Colors.orange,
    ),
    Category(
      categoryID: '4',
      categoryTitle: 'Thriller',
      categoryColor: Colors.green,
    ),
    Category(
      categoryID: '5',
      categoryTitle: 'Fantasy',
      categoryColor: Colors.purple,
    ),
    Category(
      categoryID: '6',
      categoryTitle: 'Romance',
      categoryColor: Colors.pink,
    ),
    Category(
      categoryID: '7',
      categoryTitle: 'Humor',
      categoryColor: Colors.lightGreen,
    ),
  ];
  List<Book> bookData = const [
    Book(
      bookID: '1',
      categories: ['4', '1'],
      bookTitle: 'Gone Girl',
      coverImage:
          'https://upload.wikimedia.org/wikipedia/en/7/7e/Gone_Girl_%28Flynn_novel%29.jpg',
      authorName: 'Gillian Flynn',
      publicationYear: '2012',
      bookSummary:
          'The novel Gone Girl tells the story of Nick and Amy Elliot Dunne, a married couple whose marriage is in trouble. Amy disappears on the morning of their fifth anniversary; it appears foul play is the cause and Nick is the suspect.',
    ),
    Book(
      bookID: '2',
      categories: ['4'],
      bookTitle: 'The Other Side of Midnight',
      coverImage:
          'https://upload.wikimedia.org/wikipedia/en/0/04/TheOtherSideOfMidnight.jpg',
      authorName: 'Sidney Sheldon',
      publicationYear: '1977',
      bookSummary:
          'In France, just before the outbreak of World War II, young Noelle Page falls in love with Larry Douglas, an American pilot in the Royal Canadian Air Force stationed in France. The couple has a torrid love affair that ends abruptly when Larry receives orders to return to the United States.',
    ),
    Book(
      bookID: '3',
      categories: ['6'],
      bookTitle: 'It Ends With Us',
      coverImage:
          'https://upload.wikimedia.org/wikipedia/en/e/e4/It_Ends_with_Us_%28Colleen_Hoover%29.png',
      authorName: 'Colleen Hoover',
      publicationYear: '2016',
      bookSummary:
          'It Ends with Us follows our protagonist Lily who meets Ryle one night on a rooftop. After a few encounters, they begin to get to know one another and fall in love. They had a picture-perfect relationship, but things take a turn when Ryle becomes abusive.',
    ),
    Book(
      bookID: '4',
      categories: ['2'],
      bookTitle: 'Nineteen Eighty-Four',
      coverImage:
          'https://upload.wikimedia.org/wikipedia/en/5/51/1984_first_edition_cover.jpg',
      authorName: 'George Orwell',
      publicationYear: '1949',
      bookSummary:
          '1984 is a dystopian novel that was written by George Orwell and published in 1949. It tells the story of Winston Smith, a citizen of the miserable society of Oceania, who is trying to rebel against the Party and its omnipresent symbol, Big Brother.',
    ),
    Book(
      bookID: '5',
      categories: ['7'],
      bookTitle: 'Good Omens',
      coverImage:
          'https://upload.wikimedia.org/wikipedia/en/0/0a/Goodomenscover.jpg',
      authorName: 'Terry Pratchett, Neil Gaiman',
      publicationYear: '1990',
      bookSummary:
          'It is a satirical imagining of the Biblical apocalypse featuring angels, demons, humans, and the hosts of Heaven and Hell.',
    ),
  ];
}
