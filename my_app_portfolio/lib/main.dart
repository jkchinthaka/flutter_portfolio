import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Section
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Chinthaka Jayaweera',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // About Me Section
              _buildSectionTitle('About Me'),
              _buildSectionContent(
                  'I am a passionate Flutter developer with experience in building beautiful and functional mobile applications.'),

              // Skills Section
              _buildSectionTitle('Skills'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  spacing: 10,
                  children: const [
                    Chip(label: Text('Flutter')),
                    Chip(label: Text('Dart')),
                    Chip(label: Text('Firebase')),
                    Chip(label: Text('UI/UX Design')),
                  ],
                ),
              ),

              // Contact Me Section
              _buildSectionTitle('Contact Me'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.email, color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.phone, color: Colors.green),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.link, color: Colors.purple),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Reusable Section Content Widget
  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
      ),
    );
  }
}
