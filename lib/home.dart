import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], 
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blue, 
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/Login');
              
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Text(
              'Selamat Datang Di Perpustakaan!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            
            Text(
              'Lihat koleksi buku di sini',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue[600],
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 30.0),
            
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                    Icon(
                      Icons.library_books,
                      size: 60,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 10.0),
                    
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Perpus');
                      },
                      child: const Text(
                        "Perpustakaan",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}