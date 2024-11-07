import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutMePage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.work),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjectsPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.contact_mail),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Amarbabu',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Flutter Developer', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMePage()),
                );
              },
              child: Text('Learn More About Me'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'I am a Flutter developer with expertise in building user-friendly applications.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'With experience in integrating APIs, state management using Riverpod, and using various libraries, I strive to create the best user experience.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Projects')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ProjectTile(projectTitle: 'School Bus Management App'),
            ProjectTile(projectTitle: 'E-commerce Platform'),
            ProjectTile(projectTitle: 'QuizCircles'),
          ],
        ),
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String projectTitle;

  ProjectTile({required this.projectTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(projectTitle),
      onTap: () {
        // Navigate to a detailed project page if needed
      },
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Me')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Email: amarbabu@example.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Phone: +91 123 456 7890', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
