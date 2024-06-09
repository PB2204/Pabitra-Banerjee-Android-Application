import 'package:flutter/material.dart';
import 'home_page.dart';
import 'projects_page.dart';
import 'project_details_page.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/projects': (context) => ProjectsPage(),
        '/projectDetail': (context) => ProjectDetailPage(
              projectTitle: ModalRoute.of(context)!.settings.arguments as String,
            ),
      },
    );
  }
}
