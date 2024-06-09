import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/social_media_links.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pabitra Banerjee'),
        centerTitle: true,
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
              title: Text('Music'),
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
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal, Colors.tealAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage('images/hero.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello, I\'m',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Pabitra Banerjee!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Full Stack AI Engineer, Author,\nTech Enthusiast & Musician',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/projects');
                            },
                            child: Text('View My Projects'),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          ElevatedButton(
                            onPressed: () async {
                              const url = 'https://open.spotify.com/artist/3IVD6HwQz8KIx3tqRexpqB';
                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text('Listen To My Music'),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra Banerjee is a Full-Stack AI Engineer with some knowledge of Blockchain Technology and a tech enthusiast. He is the Founder & CEO of MB WEBBER\'S, a Software Development company based on Manbazar, Purulia, West Bengal. He is the Founder & CEO of some more companies based on Manbazar, like - Code Explorer, Dev Line Community, etc. He is working actively to spread Science & Technology to the common people. He is very fond of Astrophysics & Mathematics. He writes actively about Astrophysics and latest space missions by all of the space agencies on Universal Space Missions.'),
                  SizedBox(height: 16),
                  Text('Education',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra Banerjee pursued his primary education at Manbazar Board Primary School and later continued his secondary education at Manbazar Radha Madhab Institution, both situated in his hometown. After completing his 10th standard under the West Bengal Board Of Secondary Education(W.B.B.S.E.) in 2019 and his Higher-Secondary Examination under the West Bengal Council Of Higher Secondary Education(W.B.C.H.S.E.) in 2021, he embarked on a journey in higher education. Initially enrolling in a B.Sc. Mathematics program at Bikramjeet Goswami Memorial College, under Sidho Kanho Birsha University, Purulia, he later transitioned to pursue B.Sc. Computer Science at Manbhum Mahavidyalaya under the same university in 2023. This academic path reflects Pabitra\'s interest in both mathematical and computer science domains.'),
                  SizedBox(height: 16),
                  Text('Parents',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra Banerjee is the only son of his parents.\n\nFather: (1975 - present) Mr. Pulak Banerjee.\nMother: (1983 - present) Mrs. Babita Banerjee.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Development Projects',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra has shared a lots of development projects done by him on his GitHub Account. From there we can know that he has knowledge about Full-Stack Web Development, Android App Development, Game Development, AI and Machine Learning, Blockchain Technology, DSA and many more domains of Computer Science. Here are some of his development projects -'),
                  SizedBox(height: 8),
                  buildProjectTile(
                      context,
                      'Dev-Portfolio',
                      'This is one of his best portfolio website. The website has been built using HTML, CSS, SAAS and JavaScript. The website has a very clean UI and the design and responsiveness shows his ability to develop top class Front-End.'),
                  buildProjectTile(
                      context,
                      'Mac-Terminal-Portfolio',
                      'Pabitra has created a terminal interface of MacBook using HTML, CSS & JavaScript. There he has created a simple portfolio website.'),
                  buildProjectTile(
                      context,
                      'Book-Finder App',
                      'A simple website to find your next book to read and book recommendations. An internship project of iNeuron. This website is developed using the React library of JavaScript.'),
                  buildProjectTile(
                      context,
                      'Clash-Of-Space',
                      'Clash of Space is a cloned version game of the original Radius Raid of js13kGames (A JavaScript coding competition for HTML5 Game Developers) which is a popular game for kids. A space craft shooting game built with HTML5, CSS, JavaScript.'),
                  buildProjectTile(
                      context,
                      'MB Health Bot',
                      'MB Health Bot is a conversational agent designed to mimic a psychotherapist in order to provide emotional support to people with anxiety & depression. At its core, MB Health Bot is a chatbot trained on a text dataset using Deep Learning and Natural Language Processing techniques.'),
                  Text(
                      'If you want to explore some more projects done by Pabitra, please go to his GitHub Project Website.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Core Programming Projects',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra is a Full-Stack Web Developer, but he has the ability to contribute on Core Programming. He has developed a lots of JavaScript & Python Libraries to help developers to save their time and enhance efficiency. Some of his libraries are -'),
                  SizedBox(height: 8),
                  buildProjectTile(
                      context,
                      'JS-DSA',
                      'JS-DSA is a comprehensive collection of data structures and algorithms implemented in JavaScript. This project is designed to be a helpful resource for developers, students, and anyone interested in learning about data structures and algorithms through practical JavaScript examples. Install JS-DSA.'),
                  buildProjectTile(
                      context,
                      'Google-Image-Fetcher',
                      'Pabitra has developed three different libraries for three different programming languages - Python, C++ and JavaScript to download required images directly from your terminal.'),
                  buildProjectTile(
                      context,
                      'Advanced Math',
                      'Advanced Math (adv-math) is a comprehensive JavaScript library that simplifies advanced mathematical calculations, covering a wide range of mathematical topics such as basic arithmetic, complex numbers, linear algebra, statistics, geometry, trigonometry, calculus, financial calculations, units and conversions, equation solvers, and math expression parsing. This library is designed to provide developers with powerful mathematical tools for various applications. Install Advanced Math (adv-math).'),
                  Text(
                      'Please go to Pabitra\'s NPM Profile and PyPi Profile to find more libraries.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Visual Studio Marketplace',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra has developed a lots of VS Code extensions, which are currently available on Visual Studio Marketplace.'),
                  SizedBox(height: 8),
                  buildProjectTile(
                      context,
                      'IDX-Dark-Theme',
                      'IDX Dark Theme is a stunning dark theme for Visual Studio Code that brings the elegance of Google\'s IDX design to your coding environment. With its vibrant colors and thoughtful design, coding becomes a delightful experience. Take a look at IDX-Dark-Theme.'),
                  Text(
                      'To explore more go to Pabitra Banerjee Publisher Account on Visual Studio Marketplace.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('PyConda Programming Language',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra is working actively on PyConda Programming Language. PyConda is a simple, Python-based programming language designed for ease of use and extensibility. With PyConda, you can write and execute code in a straightforward and intuitive manner. He has already released the 1.0.0 version of PyConda and wants to publish version 1.0.1 in January 2024. Explore PyConda.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Published Books',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Pabitra Banerjee is a Full-Stack AI Engineer and a Tech-Enthusiast as well as a musician and a well-known author. He has written a lots of books on various topics. Some of his books are -'),
                  SizedBox(height: 8),
                  buildBookTile(
                      context,
                      'Beyond Bits And Bytes: A History \nOf Technological Marvels',
                      'Embark on a captivating journey through the evolution of technology, from the dawn of primitive tools to the dazzling horizons of quantum computing and nanotechnology. In this thought-provoking eBook, Pabitra Banerjee, a Full Stack AI Engineer and Blockchain Developer, explores the remarkable history of innovation, invention, and progress that has shaped our world. Discover the visionary pioneers who blazed trails in computing, the birth of the internet that connected continents, and the transformative impact of artificial intelligence. This compelling narrative not only delves into the past but also contemplates the ethical and societal considerations that accompany the technological marvels of today and tomorrow. Join us in this exploration of the past, present, and future of technology, and be inspired by the relentless human spirit of innovation. View this book on Amazon.'),
                  buildBookTile(
                      context,
                      'From Novice To Ninja: Mastering \nDSA in C++',
                      'Embark on a transformative journey through the realm of Data Structures and Algorithms with "From Novice to Mastering DSA in C++," authored by Pabitra Banerjee, a seasoned full-stack AI engineer and CEO at MB WEBBER\'S, a prominent software development company in Manbazar, West Bengal.'),
                  buildBookTile(
                      context,
                      'Decoding Artificial Intelligence',
                      'Decoding Artificial Intelligence stands as a testament to the profound expertise and passion of its author, Pabitra Banerjee. In this illuminating journey through the realms of technology, Pabitra, a distinguished Full-Stack AI Engineer and visionary tech enthusiast, extends an invitation to readers to unravel the intricacies of artificial intelligence.\n\nThis comprehensive guide transcends the ordinary, providing a nuanced understanding of AI\'s evolution, from its historical roots to the cutting-edge advancements in deep learning and machine learning. Pabitra\'s expertise shines through as he meticulously guides readers through the development of AI models, algorithm selection, and the critical evaluation processes that define the landscape of artificial intelligence.\n\nMore than just a technical manual, Decoding Artificial Intelligence delves into the ethical considerations of AI, emphasizing the responsible application of these technologies for the betterment of society. Pabitra skillfully weaves real-world applications, case studies, and future trends into the narrative, making this book an invaluable companion for both novices and seasoned professionals on the AI journey.\n\nAs you turn the pages, you\'ll not only gain a profound understanding of the intricate workings of AI but also embark on a thought-provoking exploration of its societal impact. Decoding Artificial Intelligence is not just a book; it\'s a guided tour through the fascinating world of AI, where Pabitra Banerjee serves as your trusted navigator, leading you through the complexities and possibilities of artificial intelligence.'),
                  buildBookTile(
                      context,
                      'Python 3: The Essential Guide',
                      'Python 3 : The Essential Guide is an immersive journey into the world of Python programming, meticulously crafted to empower beginners and seasoned developers alike. From laying the foundational concepts to mastering advanced techniques, this book offers a comprehensive roadmap for anyone eager to harness the power of Python.\n\nEmbark on a seamless learning experience as you delve into the essential principles of programming with Python. With clear explanations, practical examples, and hands-on exercises, each chapter is designed to foster a deep understanding of Python\'s syntax, data structures, and core functionalities.\n\nDiscover the art of crafting elegant and efficient code through detailed discussions on topics such as string manipulation, data types, control flow, and object-oriented programming. Whether you\'re a novice coder or an experienced developer, the book\'s structured approach ensures a gradual progression from fundamental concepts to sophisticated problem-solving strategies.\n\nExplore the versatility of Python as you learn how to install and set up Python 3 on various operating systems, write your first Python program, and leverage built-in functions for common tasks. Dive deeper into Python\'s rich ecosystem by mastering essential libraries, handling exceptions, and exploring advanced topics like list comprehensions, decorators, and context managers.\n\nWith its user-friendly format and comprehensive coverage, Python 3 : The Essential Guide serves as both a tutorial for newcomers and a reference manual for experienced programmers. Whether you aspire to build web applications, automate mundane tasks, or dive into data science and machine learning, this book equips you with the skills and confidence to unlock Python\'s full potential.\n\nWritten by seasoned professionals with a passion for teaching and a deep understanding of Python\'s intricacies, this book is more than just a guide—it\'s your companion on the journey to becoming a proficient Python programmer. Let Python 3 : The Essential Guide be your gateway to the exciting world of Python development, where creativity knows no bounds and innovation thrives.'),
                  buildBookTile(
                      context,
                      'Marvels Of the Cosmos',
                      'Marvels of the Cosmos invites you on an extraordinary journey through the celestial tapestry that graces our night skies. In this captivating exploration, the book unveils the wonders of the cosmos with a poetic and insightful narrative that transcends the boundaries of ordinary stargazing. Each page is an invitation to wander the vast expanses of space, where stars shimmer like ethereal jewels, planets dance in cosmic ballets, and galaxies unfold their majestic arms in celestial symphonies.\n\nThrough vivid descriptions and awe-inspiring storytelling, Marvels of the Cosmos paints a breathtaking portrait of the universe, guiding readers beyond the veil of city lights to behold the true splendor of a dark night sky. From the ancient myths that trace constellations to the cutting-edge discoveries that unravel the mysteries of distant galaxies, the book seamlessly weaves together the threads of human fascination with the cosmos.\n\nAs you turn the pages, you will find yourself immersed in the enchanting tales of ancient astronomers who first dared to map the stars, the profound revelations of modern astrophysics, and the cosmic wonders that continue to captivate our imaginations. Whether you are a seasoned astronomer or a curious stargazer, Marvels of the Cosmos is an odyssey that beckons you to gaze upward and contemplate the profound beauty and complexity of the universe.\n\nThis literary masterpiece doesn\'t merely depict the cosmos as a scientific canvas but transforms it into a celestial poem, inviting readers to ponder the timeless questions that have fueled humanity\'s quest for understanding. Marvels of the Cosmos is not just a book; it\'s an odyssey into the heart of the night sky, a lyrical exploration that kindles a sense of wonder and reverence for the vastness that surrounds us.'),
                  buildBookTile(
                      context,
                      'Love\'s Victory',
                      'Love\'s Victory unfolds the captivating journey of Bhed and Anamika, a tale interwoven with the threads of love, resilience, and triumph. As their story unfolds against the backdrop of personal and professional challenges, the narrative beautifully captures the transformative power of love, demonstrating how it becomes the guiding force that shapes destinies and propels individuals towards their dreams. Pabitra Banerjee\'s poignant storytelling not only delves into the complexities of relationships but also celebrates the indomitable spirit of those who find strength and success in the embrace of unwavering love. Love\'s Victory is a heartfelt exploration of the human experience, a testament to the enduring power of love to overcome adversity and pave the way for extraordinary triumphs.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recognition',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      'Pabitra has already been recognized by Google, thus he has a Knowledge Panel. He is also an open source contributor. GitHub spotlighted him for his outstanding contribution in the last HackToBerfest. Currently he is a verified author of Google Books & Amazon.'),
                ],
              ),
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
                    Text('© 2024 Pabitra Banerjee', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProjectTile(
      BuildContext context, String title, String description) {
    return ListTile(
      leading: Icon(FontAwesomeIcons.codeBranch),
      title: Text(title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      subtitle: Text(description),
      onTap: () {
        Navigator.pushNamed(context, '/projectDetail', arguments: title);
      },
    );
  }

  Widget buildBookTile(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(FontAwesomeIcons.book, size: 20),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(description),
        ],
      ),
    );
  }
}
