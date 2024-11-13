import 'package:flutter/material.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpus Telkom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookListScreen(),
    );
  }
}

class BookListScreen extends StatelessWidget {
  final List<Book> books = [
    Book  (
      title: 'LITTLE SECRETS',
      author: 'Anna Snoekstra',
      publisher: 'Gramedia Pustaka Utama',
      stock: 15,
      imageUrl: 'https://www.gramedia.com/products/rahasia-rahasia-kecil-little-secrets?utm_source=bestseller&utm_medium=bestsellerbuku&utm_campaign=seo&utm_content=BestSellerRekomendasi',
    ),
    Book(
      title: 'Berdarah Diatas Kertas',
      author: 'Sajak Monokrom (Kaesya)',
      publisher: 'Akad x Skuad',
      stock: 25,
      imageUrl: 'https://www.google.com/imgres?q=berdarah%20di%20atas%20kertas%20publisher&imgurl=https%3A%2F%2Fcdn.gramedia.com%2Fuploads%2Fpicture_meta%2F2024%2F5%2F10%2F5oy3lkzpxsqbir8rfw995m.jpg&imgrefurl=https%3A%2F%2Fwww.gramedia.com%2Fproducts%2Fberdarah-di-atas-kertas&docid=64wxN1W8Y9Tt0M&tbnid=nj39SVuVBXY8lM&vet=12ahUKEwiLtdiD5diJAxUDyjgGHdoODYgQM3oECBgQAA..i&w=650&h=928&hcb=2&ved=2ahUKEwiLtdiD5diJAxUDyjgGHdoODYgQM3oECBgQAA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Information'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String publisher;
  final int stock;
  final String imageUrl;

  Book({
    required this.title,
    required this.author,
    required this.publisher,
    required this.stock,
    required this.imageUrl,
  });
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              book.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Author: ${book.author}'),
            Text('Publisher: ${book.publisher}'),
            Text('Stock: ${book.stock}'),
          ],
        ),
      ),
    );
  }
}