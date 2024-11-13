import 'package:flutter/material.dart';
import 'package:perpus/BookModel.dart';
import 'package:perpus/home.dart';
import 'package:perpus/library_view.dart';
import 'package:perpus/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PERPUSTAKAAN',
      initialRoute: '/Perpus',  
      routes: {
      '/Perpus': (context) => LibraryView(),
      },
    );
  }
}