import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Galeri Foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.network(
                'https://picsum.photos/id/88/300/200',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: const Text(
                'Jalan di Barcelona',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  const SizedBox(height: 12.0),

                  const Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.red,
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          'Lokasi: Barcelona, Spanyol',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12.0),

                  const Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          'Publikasi: 13 Agustus 2013',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),

                  const Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  const SizedBox(height: 12.0),

                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. '
                    'Foto ini menampilkan berbagai kendaraan yang bergerak '
                    'dalam arah yang berbeda, menciptakan pemandangan '
                    'yang sibuk dan energik.',
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}