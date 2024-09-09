import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://images.pexels.com/photos/219681/pexels-photo-219681.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
              ),
            ),
            SizedBox(height: 16),

            // Name and Title
            Center(
              child: Column(
                children: [
                  Text(
                    'Anjali Thombre',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
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
            SizedBox(height: 24),

            // About Section
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'I am a passionate Flutter developer with experience in building cross-platform mobile applications. I love working with Flutter to create beautiful and functional user interfaces.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),

            // Contact Information
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  'thombreanjali98@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  '+917385182027',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Stack Widget Example
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Row(
                    children: [
                      Chip(
                        label: Text('Flutter'),
                        backgroundColor: Colors.blue[200],
                      ),
                      SizedBox(width: 8),
                      Chip(
                        label: Text('Dart'),
                        backgroundColor: Colors.blue[200],
                      ),
                      SizedBox(width: 8),
                      Chip(
                        label: Text('Firebase'),
                        backgroundColor: Colors.blue[200],
                      ),
                      // SizedBox(width: 8),
                      // Chip(
                      //   label: Text('Github'),
                      //   backgroundColor: Colors.blue[200],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}