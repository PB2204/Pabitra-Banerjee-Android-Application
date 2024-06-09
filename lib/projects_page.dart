import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'widgets/social_media_links.dart';
import 'project_details_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Dev-Portfolio',
      'description': 'A top-class portfolio website built using HTML, CSS, SAAS, and JavaScript.',
      'image': 'images/dev_portfolio.jpg',
    },
    {
      'title': 'Mac-Terminal-Portfolio',
      'description': 'A terminal interface of MacBook using HTML, CSS & JavaScript.',
      'image': 'images/mac_terminal_portfolio.jpg',
    },
    {
      'title': 'Book-Finder App',
      'description': 'A website to find your next book to read and book recommendations.',
      'image': 'images/book_finder_app.jpg',
    },
    {
      'title': 'Clash-Of-Space',
      'description': 'A cloned version of the Radius Raid game using HTML5, CSS, JavaScript.',
      'image': 'images/clash_of_space.jpg',
    },
    {
      'title': 'MB Health Bot',
      'description': 'A conversational agent providing emotional support to people with anxiety & depression.',
      'image': 'images/mb_health_bot.png',
    },
    {
      'title': 'Beyond Bits And Bytes: A History Of Technological Marvels',
      'description': 'A book about the evolution of technology by Pabitra Banerjee.',
      'image': 'images/beyond_bits_and_bytes.jpg',
    },
    {
      'title': 'From Novice To Ninja: Mastering DSA in C++',
      'description': 'A comprehensive guide to mastering Data Structures and Algorithms in C++.',
      'image': 'images/novice_to_ninja.jpg',
    },
    {
      'title': 'Decoding Artificial Intelligence',
      'description': 'An in-depth guide to understanding AI, its development, and applications.',
      'image': 'images/decoding_ai.jpg',
    },
    {
      'title': 'Python 3: The Essential Guide',
      'description': 'A comprehensive roadmap for anyone eager to harness the power of Python.',
      'image': 'images/python_guide.jpg',
    },
    {
      'title': 'Marvels Of the Cosmos',
      'description': 'A journey through the celestial wonders of the cosmos.',
      'image': 'images/marvels_of_cosmos.jpg',
    },
    {
      'title': 'Love\'s Victory',
      'description': 'A tale of love, resilience, and triumph by Pabitra Banerjee.',
      'image': 'images/loves_victory.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects and Books'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Navigation',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              title: Text('Resume'),
              onTap: () async {
                const url = 'https://pabitrabanerjee.me/resume/resume';
                // ignore: deprecated_member_use
                if (await canLaunch(url)) {
                  // ignore: deprecated_member_use
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            ListTile(
              title: Text('Songs'),
              onTap: () async {
                const url = 'https://open.spotify.com/artist/3IVD6HwQz8KIx3tqRexpqB';
                // ignore: deprecated_member_use
                if (await canLaunch(url)) {
                  // ignore: deprecated_member_use
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return OpenContainer(
                  closedElevation: 0,
                  transitionType: ContainerTransitionType.fadeThrough,
                  closedBuilder: (context, openContainer) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: InkWell(
                          onTap: openContainer,
                          child: Column(
                            crossAxisAlignment: index % 2 == 0
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(index % 2 == 0 ? 15 : 0),
                                  topRight: Radius.circular(index % 2 == 0 ? 0 : 15),
                                  bottomLeft: Radius.circular(index % 2 == 0 ? 0 : 15),
                                  bottomRight: Radius.circular(index % 2 == 0 ? 15 : 0),
                                ),
                                child: Image.asset(
                                  project['image']!,
                                  height: 200,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      project['title']!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      project['description']!,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  openBuilder: (context, closeContainer) {
                    return ProjectDetailPage(projectTitle: project['title']!);
                  },
                );
              },
            ),
            SizedBox(height: 16),
            Center(
              child: SocialMediaLinks(),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              color: Colors.teal,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.copyright, color: Colors.white),
                    SizedBox(width: 8),
                    Text('2024 Pabitra Banerjee', style: TextStyle(fontSize: 20,color: Colors.white)),
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