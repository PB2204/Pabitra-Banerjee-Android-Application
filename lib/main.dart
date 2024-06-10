import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'home_page.dart';
import 'projects_page.dart';
import 'project_details_page.dart';
import 'update_checker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('updateIgnored', false); // Reset the updateIgnored flag on app restart
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _checkForUpdate();
  }

  Future<void> _checkForUpdate() async {
    final prefs = await SharedPreferences.getInstance();
    final updateChecker = UpdateChecker();
    final newReleaseUrl = await updateChecker.checkForUpdate();

    if (newReleaseUrl != null && !prefs.getBool('updateIgnored')!) {
      _showUpdateDialog(newReleaseUrl);
    }
  }

  void _showUpdateDialog(String url) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Available'),
          content: Text('A new version of the app is available. Would you like to update now?'),
          actions: <Widget>[
            TextButton(
              child: Text('Later'),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('updateIgnored', true);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Update Now'),
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL(url);
              },
            ),
          ],
        );
      },
    );
  }

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pabitra Banerjee'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text('Welcome to My Portfolio'),
      ),
    );
  }
}
