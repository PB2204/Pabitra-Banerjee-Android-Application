import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/social_media_links.dart';

class ProjectDetailPage extends StatelessWidget {
  final String projectTitle;

  ProjectDetailPage({required this.projectTitle});

  final Map<String, dynamic> projectDetails = {
    'Dev-Portfolio': {
      'description': 'The Dev-Portfolio project is an innovative web application designed to showcase the professional profiles of developers in a visually appealing and highly functional manner. Built using the core technologies of HTML, CSS, and JavaScript, the project emphasizes a clean, modern design while ensuring a responsive and interactive user experience. HTML provides the structural foundation, allowing for semantic and accessible content organization. CSS is used extensively to style the portfolio, creating a cohesive and attractive visual presentation through the use of flexible layouts, custom animations, and responsive design principles. JavaScript enhances the functionality of the portfolio by enabling dynamic content updates, interactive elements, and seamless navigation.\n\nOne of the standout features of the Dev-Portfolio project is its use of Sass (Syntactically Awesome Style Sheets), a CSS preprocessor that extends the capabilities of CSS with variables, nested rules, and mixins. This approach not only streamlines the development process but also promotes maintainable and scalable stylesheets. By leveraging Sass, the project achieves a higher level of code reusability and efficiency, allowing for rapid iterations and updates. The integration of modern JavaScript libraries and frameworks further augments the project\'s capabilities, offering enhanced interactivity and performance optimization. Features such as animated skill charts, filterable project galleries, and real-time form validations contribute to a rich user experience.\n\nThroughout the development of the Dev-Portfolio project, several challenges were encountered, including the need to ensure cross-browser compatibility, optimize performance for various devices, and maintain a consistent design language. Addressing these challenges required meticulous testing and iterative refinement, ultimately leading to a robust and polished final product. The outcomes of the project are notable, with the Dev-Portfolio successfully delivering a dynamic and engaging platform that effectively highlights developers\' skills and achievements. This project not only demonstrates the power and versatility of HTML, CSS, JavaScript, and Sass but also serves as a testament to the importance of thoughtful design and meticulous execution in web development.',
      'image': 'images/dev_portfolio.jpg',
      'github': 'https://github.com/PB2204/Dev-Portfolio',
      'live': 'http://pabitrabanerjee.me/Dev-Portfolio/'
    },
    'Mac-Terminal-Portfolio': {
      'description': 'The Mac-Terminal-Portfolio project is a unique and innovative web application that emulates the look and feel of a macOS terminal. It offers users an interactive and engaging way to showcase their professional profiles and projects. Utilizing core web technologies such as HTML, CSS, and JavaScript, the project combines simplicity with sophistication. HTML serves as the structural backbone, ensuring that content is well-organized and accessible. CSS brings the design to life, replicating the sleek and minimalistic aesthetics of a macOS terminal. JavaScript is used to handle dynamic interactions, such as command-line inputs, autocomplete suggestions, and real-time content updates.\n\nOne of the standout features of the Mac-Terminal-Portfolio is its adherence to modern UI design principles. The project employs a clean and intuitive user interface that prioritizes usability and user experience. The use of CSS flexbox and grid layouts ensures a responsive design that adapts seamlessly to different screen sizes and devices. Custom CSS animations and transitions provide smooth and visually appealing effects, enhancing the overall user experience. JavaScript is leveraged to create interactive elements like command prompts, terminal history, and dynamic project showcases, making the portfolio both functional and engaging.\n\nThroughout the development of the Mac-Terminal-Portfolio, several challenges were addressed, including ensuring cross-browser compatibility, optimizing performance, and maintaining a consistent design language. By adhering to modern UI design principles, the project achieves a balance between aesthetics and functionality. The outcome is a highly polished and professional portfolio that effectively showcases the user\'s skills and projects in an innovative and memorable way. The Mac-Terminal-Portfolio stands as a testament to the power of HTML, CSS, and JavaScript, combined with thoughtful design and meticulous execution, to create a unique and compelling web application.',
      'image': 'images/mac_terminal_portfolio.jpg',
      'github': 'https://github.com/PB2204/Pabitra-Banerjeee',
      'live': 'https://pabitrabanerjee.me/Pabitra-Banerjeee/'
    },
    'Book-Finder App': {
      'description': 'The Book-Finder App is an innovative web application developed during an internship with ineuron.ai. The app is designed to help users search for books effortlessly by providing an intuitive interface and robust search functionality. Built using HTML, CSS, JavaScript, React, and Redux, the Book-Finder App combines the latest web technologies to deliver a seamless and engaging user experience. HTML provides the structural foundation, while CSS ensures a visually appealing and responsive design. JavaScript adds interactivity, making the application dynamic and user-friendly.\n\nReact is at the core of the Book-Finder App, enabling efficient component-based architecture and state management. React\'s component-based approach ensures that each part of the application, from the search bar to the book display, is modular and reusable. This modularity simplifies development and maintenance, allowing for rapid iteration and feature enhancements. Redux is used to manage the application’s state, providing a predictable and centralized state management solution. By using Redux, the app ensures that data flows seamlessly between components, enhancing performance and user experience. The combination of React and Redux allows for real-time updates and a smooth user interface, making the book search process both efficient and enjoyable.\n\nThroughout the development of the Book-Finder App, several challenges were addressed, including integrating external APIs, optimizing performance, and maintaining a consistent design language. The app\'s backend communicates with external book APIs to fetch real-time data, providing users with accurate and up-to-date information. Performance optimization techniques, such as lazy loading and code splitting, were implemented to ensure fast load times and a responsive user interface. The outcome of this internship project is a polished and professional application that effectively showcases the potential of modern web development technologies. The Book-Finder App stands as a testament to the power of HTML, CSS, JavaScript, React, and Redux in creating a functional and user-centric web application.',
      'image': 'images/book_finder_app.jpg',
      'github': 'https://github.com/PB2204/Book-Finder',
      'live': 'https://pb2204-book-finder.netlify.app/'
    },
    'Clash-Of-Space': {
      'description': 'The Clash-Of-Space game is an engaging and thrilling 2D space shooting game developed as a clone of the popular Radius Raid from the js13kGames competition. This desktop-only game is built using HTML5, CSS, and JavaScript, providing a rich and interactive gaming experience. Players control a spacecraft navigating through space, aiming to shoot down enemies and survive as long as possible. The game features smooth animations, responsive controls, and captivating gameplay that keeps players hooked.\n\nThe development of Clash-Of-Space involved meticulous planning and execution to ensure a seamless and enjoyable gaming experience. HTML5 was used to structure the game\'s content, while CSS provided the styling necessary to create an immersive space environment. JavaScript played a crucial role in handling the game\'s logic, including player controls, enemy behavior, collision detection, and scoring system. The game\'s performance was optimized to run smoothly on desktop and laptop devices, taking full advantage of modern web technologies to deliver high frame rates and responsive gameplay.\n\nThroughout the development process, several challenges were addressed, including ensuring cross-browser compatibility, optimizing performance, and maintaining a consistent and appealing visual style. The game\'s deployment on GitHub Pages facilitated easy access and distribution, allowing players to enjoy the game directly from their browsers. The project garnered positive feedback, with 18 stars and 3 forks on GitHub, reflecting its popularity and the community\'s interest. The Clash-Of-Space game stands as a testament to the potential of HTML5, CSS, and JavaScript in creating engaging and high-quality web-based games.',
      'image': 'images/clash_of_space.jpg',
      'github': 'https://github.com/PB2204/Clash-Of-Space',
      'live': 'http://pabitrabanerjee.me/Clash-Of-Space/'
    },
    'MB Health Bot': {
      'description': 'MB Health Bot is an innovative therapeutic AI assistant designed to provide emotional support to individuals experiencing anxiety and depression. Drawing inspiration from the classic therapy scenes often depicted in Hollywood films, where a human therapist offers guidance and support, MB Health Bot aims to bridge the gap in mental health services availability. As the demand for mental health services continues to exceed supply, MB Health Bot offers an accessible online alternative through its advanced AI-driven conversational capabilities. This chatbot mimics the interactions of a psychotherapist, engaging users in extended conversations to provide comfort and general advice.\n\nThe development of MB Health Bot leverages cutting-edge AI techniques, particularly Deep Learning and Natural Language Processing (NLP). By training on extensive text datasets, the bot can understand and respond to a wide range of mental health-related queries. The deep learning models enable the bot to recognize patterns in language and emotions, allowing it to simulate human-like interactions effectively. NLP techniques further enhance the bot’s ability to process and generate natural language, making conversations feel more fluid and authentic. Despite these advanced capabilities, MB Health Bot is not a licensed physician and does not provide medical diagnoses or prescriptions. Instead, it offers supportive conversations and general advice, serving as a supplementary resource for individuals seeking emotional support.\n\nWhile MB Health Bot is not equipped to handle severe mental health crises, it is designed to act as a preliminary support system, encouraging users to seek professional help when necessary. The bot is programmed to recognize signs of distress and provides information on how to access real-world mental health resources, including hotlines and emergency contacts. By serving as a "gateway therapy," MB Health Bot helps users gain a positive initial experience with therapeutic conversations and aids them in understanding when they might need more comprehensive intervention. This approach ensures that while MB Health Bot provides valuable support, it also emphasizes the importance of professional human intervention in mental health care.',
      'image': 'images/mb_health_bot.png',
      'github': 'https://github.com/PB2204/MB-Health-Bot',
      'live': 'https://github.com/PB2204/MB-Health-Bot'
    },
    'Beyond Bits And Bytes: A History Of Technological Marvels': {
      'description': 'Embark on a captivating journey through the evolution of technology, from the dawn of primitive tools to the dazzling horizons of quantum computing and nanotechnology, in my thought-provoking eBook. As a Full Stack AI Engineer and Blockchain Developer, I, Pabitra Banerjee, explore the remarkable history of innovation, invention, and progress that has shaped our world. This narrative is not just a recount of technological advancements but a deep dive into the visionary pioneers who blazed trails in computing, leading us from the early mechanical calculators to the sophisticated digital systems we rely on today.\n\nIn this eBook, you will discover the birth of the internet, an invention that connected continents and revolutionized how we communicate, work, and live. The transformative impact of artificial intelligence is also meticulously examined, showcasing how it has permeated various facets of our lives, from healthcare to finance, and beyond. The exploration extends to contemporary marvels such as blockchain technology and the ethical and societal considerations that come with these advancements. My goal is to provide a comprehensive understanding of how these technologies evolved, their current state, and their potential future trajectory.\n\nJoin me in this exploration of the past, present, and future of technology, and be inspired by the relentless human spirit of innovation. This eBook is not just an informative guide but a reflection on the profound impact technology has on our lives and society. It invites readers to contemplate the ethical implications of technological progress and the responsibilities that come with it. Whether you are a tech enthusiast, a student, or a professional in the field, this book offers valuable insights and a deeper appreciation for the remarkable journey of technological evolution.',
      'image': 'images/bits_and_bytes.jpg',
      'amazon': 'https://www.amazon.com/dp/B0CLKYV4Y6',
      'google': 'https://www.google.co.in/books/edition/Beyond_Bits_And_Bytes/uoLhEAAAQBAJ'
    },
    'From Novice To Ninja: Mastering DSA in C++': {
      'description': 'Embark on a transformative journey through the realm of Data Structures and Algorithms with "From Novice to Ninja: Mastering DSA in C++," authored by Pabitra Banerjee, a seasoned Full Stack AI Engineer and CEO at MB WEBBER\'S, a prominent software development company in Manbazar, West Bengal. This comprehensive guide is designed to take readers from the basics to advanced concepts, providing a solid foundation in C++ and the crucial algorithms that underpin efficient software development.\n\nIn this book, I, Pabitra Banerjee, bring my extensive experience in the tech industry to create a learning resource that is both accessible and in-depth. Each chapter meticulously explains fundamental data structures like arrays, linked lists, stacks, and queues, before advancing to more complex topics such as trees, graphs, and hash tables. With practical examples and detailed explanations, readers will gain a clear understanding of how these structures work and how to implement them effectively in C++. Additionally, the book covers essential algorithms for sorting, searching, and optimization, ensuring that readers are well-equipped to tackle real-world coding challenges.\n\n"From Novice to Ninja: Mastering DSA in C++" is not just a textbook but a mentor in print, guiding you through the intricacies of problem-solving and algorithmic thinking. Whether you are a student preparing for competitive programming, a professional looking to sharpen your skills, or an enthusiast eager to delve deeper into computer science, this book offers valuable insights and practical knowledge. Join me on this educational journey, and unlock the skills needed to become proficient in Data Structures and Algorithms, setting a strong foundation for a successful career in software development.',
      'image': 'images/dsa_cpp.png',
      'amazon': 'https://www.amazon.com/dp/B0CNSC1R1N',
      'google': 'https://www.google.co.in/books/edition/From_Novice_To_Ninja_Mastering_DSA_In_C+/LIDkEAAAQBAJ'
    },
    'Decoding Artificial Intelligence': {
      'description': '"Decoding Artificial Intelligence" stands as a testament to the profound expertise and passion of its author, Pabitra Banerjee. In this illuminating journey through the realms of technology, Pabitra, a distinguished Full-Stack AI Engineer and visionary tech enthusiast, extends an invitation to readers to unravel the intricacies of artificial intelligence.\n\nThis comprehensive guide transcends the ordinary, providing a nuanced understanding of AI\'s evolution, from its historical roots to the cutting-edge advancements in deep learning and machine learning. Pabitra\'s expertise shines through as he meticulously guides readers through the development of AI models, algorithm selection, and the critical evaluation processes that define the landscape of artificial intelligence.\n\nMore than just a technical manual, "Decoding Artificial Intelligence" delves into the ethical considerations of AI, emphasizing the responsible application of these technologies for the betterment of society. Pabitra skillfully weaves real-world applications, case studies, and future trends into the narrative, making this book an invaluable companion for both novices and seasoned professionals on the AI journey.\n\nAs you turn the pages, you\'ll not only gain a profound understanding of the intricate workings of AI but also embark on a thought-provoking exploration of its societal impact. "Decoding Artificial Intelligence" is not just a book; it\'s a guided tour through the fascinating world of AI, where Pabitra Banerjee serves as your trusted navigator, leading you through the complexities and possibilities of artificial intelligence.',
      'image': 'images/decoding_ai.png',
      'amazon': 'https://www.amazon.com/dp/B0CR86L31J',
      'google': 'https://www.google.co.in/books/edition/Decoding_Artificial_Intelligence/fJrrEAAAQBAJ'
    },
    'Python 3: The Essential Guide': {
      'description': 'Python 3 : The Essential Guide is an immersive journey into the world of Python programming, meticulously crafted to empower beginners and seasoned developers alike. From laying the foundational concepts to mastering advanced techniques, this book offers a comprehensive roadmap for anyone eager to harness the power of Python.\n\nEmbark on a seamless learning experience as you delve into the essential principles of programming with Python. With clear explanations, practical examples, and hands-on exercises, each chapter is designed to foster a deep understanding of Python\'s syntax, data structures, and core functionalities.\n\nDiscover the art of crafting elegant and efficient code through detailed discussions on topics such as string manipulation, data types, control flow, and object-oriented programming. Whether you\'re a novice coder or an experienced developer, the book\'s structured approach ensures a gradual progression from fundamental concepts to sophisticated problem-solving strategies.\n\nExplore the versatility of Python as you learn how to install and set up Python 3 on various operating systems, write your first Python program, and leverage built-in functions for common tasks. Dive deeper into Python\'s rich ecosystem by mastering essential libraries, handling exceptions, and exploring advanced topics like list comprehensions, decorators, and context managers.\n\nWith its user-friendly format and comprehensive coverage, Python 3 : The Essential Guide serves as both a tutorial for newcomers and a reference manual for experienced programmers. Whether you aspire to build web applications, automate mundane tasks, or dive into data science and machine learning, this book equips you with the skills and confidence to unlock Python\'s full potential.\n\nWritten by seasoned professionals with a passion for teaching and a deep understanding of Python\'s intricacies, this book is more than just a guide—it\'s your companion on the journey to becoming a proficient Python programmer. Let Python 3 : The Essential Guide be your gateway to the exciting world of Python development, where creativity knows no bounds and innovation thrives.',
      'image': 'images/python3_the_essential_guide.png',
      'amazon': 'https://www.amazon.com/dp/B0D1YF59ZD',
      'google': 'https://www.google.co.in/books/edition/Python_3_The_Essential_Guide/Dz8CEQAAQBAJ'
    },
    'Marvels Of the Cosmos': {
      'description': '"Marvels of the Cosmos" invites you on an extraordinary journey through the celestial tapestry that graces our night skies. In this captivating exploration, the book unveils the wonders of the cosmos with a poetic and insightful narrative that transcends the boundaries of ordinary stargazing. Each page is an invitation to wander the vast expanses of space, where stars shimmer like ethereal jewels, planets dance in cosmic ballets, and galaxies unfold their majestic arms in celestial symphonies.\n\nThrough vivid descriptions and awe-inspiring storytelling, "Marvels of the Cosmos" paints a breathtaking portrait of the universe, guiding readers beyond the veil of city lights to behold the true splendor of a dark night sky. From the ancient myths that trace constellations to the cutting-edge discoveries that unravel the mysteries of distant galaxies, the book seamlessly weaves together the threads of human fascination with the cosmos.\n\nAs you turn the pages, you will find yourself immersed in the enchanting tales of ancient astronomers who first dared to map the stars, the profound revelations of modern astrophysics, and the cosmic wonders that continue to captivate our imaginations. Whether you are a seasoned astronomer or a curious stargazer, "Marvels of the Cosmos" is an odyssey that beckons you to gaze upward and contemplate the profound beauty and complexity of the universe.\n\nThis literary masterpiece doesn\'t merely depict the cosmos as a scientific canvas but transforms it into a celestial poem, inviting readers to ponder the timeless questions that have fueled humanity\'s quest for understanding. "Marvels of the Cosmos" is not just a book; it\'s an odyssey into the heart of the night sky, a lyrical exploration that kindles a sense of wonder and reverence for the vastness that surrounds us.',
      'image': 'images/marvels_of_the_cosmos.png',
      'amazon': 'https://www.amazon.com/dp/B0CSKLTJSQ',
      'google': 'https://www.google.co.in/books/edition/Marvels_Of_the_Cosmos/3e3tEAAAQBAJ'
    },
    'Love\'s Victory': {
      'description': '"Love\'s Victory" unveils the captivating journey of Bhed and Anamika, whose tale is interwoven with the threads of love, resilience, and triumph. Set against the backdrop of personal and professional challenges, their narrative beautifully captures the transformative power of love. Through Pabitra Banerjee\'s poignant storytelling, readers witness how love becomes the guiding force that shapes destinies and propels individuals towards their dreams. As Bhed and Anamika navigate the complexities of their relationship, they discover the resilience within themselves and each other, ultimately finding victory in the face of adversity.\n\nAs the story unfolds, readers are drawn into the intricate web of emotions and experiences that Bhed and Anamika encounter. From moments of joy and tenderness to trials of heartache and despair, their journey resonates with authenticity and depth. Pabitra Banerjee skillfully portrays the complexities of human relationships, exploring the depths of love and the challenges that accompany it. Through the ups and downs of Bhed and Anamika\'s relationship, readers are reminded of the enduring power of love to inspire, heal, and transform lives.\n\n "Love\'s Victory" celebrates the indomitable spirit of those who find strength and success in the embrace of unwavering love. As Bhed and Anamika overcome obstacles and forge ahead towards their dreams, their story serves as a testament to the resilience of the human heart. Pabitra Banerjee\'s masterful storytelling weaves a tapestry of emotions, capturing the essence of love\'s triumph over adversity. Through their journey, readers are reminded of the profound impact that love can have on shaping destinies and overcoming challenges.\n\nIn "Love\'s Victory," Pabitra Banerjee invites readers on a heartfelt exploration of the human experience, where love reigns supreme as a guiding light in the darkest of times. This poignant tale serves as a reminder of the enduring power of love to overcome obstacles and pave the way for extraordinary triumphs. As Bhed and Anamika\'s story unfolds, readers are inspired to embrace the transformative power of love in their own lives, forging ahead with courage and determination towards their own victories.',
      'image': 'images/lovesvictory.jpg',
      'amazon': 'https://www.amazon.com/dp/B0CQRPCHM3',
      'google': 'https://www.google.co.in/books/edition/Love_s_Victory/RlPqEAAAQBAJ'
    },
  };

  Future<void> _launchURL(String url) async {
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
    final details = projectDetails[projectTitle];

    return Scaffold(
      appBar: AppBar(
        title: Text(projectTitle),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectTitle,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  details['image'] != null
                      ? Image.asset(
                          details['image'],
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )
                      : Container(),
                  SizedBox(height: 16),
                  Text(
                    details['description'],
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  details.containsKey('github') && details.containsKey('live')
                      ? Row(
                          children: [
                            ElevatedButton(
                              onPressed: () => _launchURL(details['github']),
                              child: Text('View On GitHub'),
                            ),
                            SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () => _launchURL(details['live']),
                              child: Text('View Live Project'),
                            ),
                          ],
                        )
                      : details.containsKey('amazon') &&
                              details.containsKey('google')
                          ? Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () =>
                                      _launchURL(details['amazon']),
                                  child: Text('Buy On Amazon'),
                                ),
                                SizedBox(width: 16),
                                ElevatedButton(
                                  onPressed: () =>
                                      _launchURL(details['google']),
                                  child: Text('Buy On Google Books'),
                                ),
                              ],
                            )
                          : Container(),
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
                    Text('2024 Pabitra Banerjee',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
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
