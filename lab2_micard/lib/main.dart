import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: const AssetImage('images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Name',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.white54,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: const Text(
                  '+84 123 456 789',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: const Text(
                  'your.email@example.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

