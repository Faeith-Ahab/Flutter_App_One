import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),  // Default height of AppBar
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 55, 142, 213), // Gradient colors
                  Color.fromARGB(255, 183, 58, 205),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: Text(
            'Basics',
            style: TextStyle(
              fontSize: 25,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: const Color.fromARGB(255, 249, 245, 245), // Text color
              shadows: [
                Shadow(
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.5), // Remove const here
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  'https://media.istockphoto.com/id/1408037921/photo/contemporary-art-collage-fashionable-young-woman-sitting-on-small-unknown-planet-at-night.jpg?s=2048x2048&w=is&k=20&c=F-j2b7WKc-qjLGbQrrOxu7a6qSWewsM6h1oKTZmHhfM=',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator(); // Loader while image is loading
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error, size: 150); // Error icon if image fails
                  },
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'AMUTUHAIRE FAITH AHABWE',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
