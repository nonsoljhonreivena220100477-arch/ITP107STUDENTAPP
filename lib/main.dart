import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        cardTheme: const CardThemeData(
          color: Color(0xFF181818),
          elevation: 4,
        ),
      ),

      home: const StudentProfilePage(),
    );
  }
}


class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  // Purple colors
  static const Color purple = Color(0xFF8B5CF6);
  static const Color lightPurple = Color(0xFFA78BFA);
  static const Color darkBackground = Color(0xFF0F0F0F);
  static const Color darkCard = Color(0xFF181818);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    

      body: SingleChildScrollView(
        child: Column(
          children: [
           

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF1A0B2E),
                    Colors.black,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),

              child: Column(
                children: [
                 
                  Container(
                    width: 130,
                    height: 130,
                    padding: const EdgeInsets.all(4),

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: purple,
                        width: 4,
                      ),
                    ),

                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.black,

                      child: ClipOval(
                        child: Image.asset(
                          'assets/ReivenPicture.jpg',
                          width: 118,
                          height: 118,
                          fit: BoxFit.cover,

                          errorBuilder: (
                            context,
                            error,
                            stackTrace,
                          ) {
                            return const Icon(
                              Icons.person,
                              size: 70,
                              color: lightPurple,
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'JHON REIVEN NONSOL',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    '"Kaka"',
                    style: TextStyle(
                      color: lightPurple,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // BSIT
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 9,
                        ),

                        decoration: BoxDecoration(
                          color: purple.withValues(alpha: 0.20),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: purple,
                          ),
                        ),

                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.school,
                              color: lightPurple,
                              size: 18,
                            ),

                            SizedBox(width: 6),

                            Text(
                              'BSIT',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 10),

                    
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 9,
                        ),

                        decoration: BoxDecoration(
                          color: purple.withValues(alpha: 0.20),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: purple,
                          ),
                        ),

                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person,
                              color: lightPurple,
                              size: 18,
                            ),

                            SizedBox(width: 6),

                            Text(
                              '3rd Year',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: lightPurple,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8),

                child: Column(
                  children: const [
                    // FULL NAME
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Full Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Jhon Reiven Nonsol',
                      ),
                    ),

                    Divider(),

                 
                    ListTile(
                      leading: Icon(
                        Icons.badge,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Nickname',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Kaka',
                      ),
                    ),

                    Divider(),

                    // AGE
                    ListTile(
                      leading: Icon(
                        Icons.cake,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Age',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        '20 years old',
                      ),
                    ),

                    Divider(),

                   
                    ListTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Birthday',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'November 08, 2005',
                      ),
                    ),

                    Divider(),

                   
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Cabuyao, Laguna',
                      ),
                    ),

                    Divider(),

                  
                    ListTile(
                      leading: Icon(
                        Icons.sports_esports,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Hobby',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Programming, Gaming, and Technology',
                      ),
                    ),

                    Divider(),

                  
                    ListTile(
                      leading: Icon(
                        Icons.format_quote,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Motto',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Kung hindi mo sila kayang pigilan, '
                        'ito nalang ay iyong sabayan.',
                      ),
                    ),

                    Divider(),

                    // COURSE
                    ListTile(
                      leading: Icon(
                        Icons.school,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Course / Program',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Bachelor of Science in Information Technology',
                      ),
                    ),

                    Divider(),

                    
                    ListTile(
                      leading: Icon(
                        Icons.groups,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Year Level',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        '3rd Year',
                      ),
                    ),

                    Divider(),

                    // SECTION
                    ListTile(
                      leading: Icon(
                        Icons.class_,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Section',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        '3IT-B',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 28),

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Academic Information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: lightPurple,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8),

                child: Column(
                  children: const [
                    // FAVORITE SUBJECT
                    ListTile(
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.pinkAccent,
                      ),

                      title: Text(
                        'Favorite Subject',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'ITP107',
                      ),
                    ),

                    Divider(),

                    // PROGRAMMING LANGUAGE
                    ListTile(
                      leading: Icon(
                        Icons.code,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Programming Language',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Java, PHP, JavaScript, and Dart',
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.computer,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Technical Skill',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Web Development and Database Management',
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.work,
                        color: lightPurple,
                      ),

                      title: Text(
                        'Career Goal',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Become a professional Web Developer (WFH)',
                      ),
                    ),

                    Divider(),
                    
                    ListTile(
                      leading: Icon(
                        Icons.lightbulb,
                        color: Colors.amber,
                      ),

                      title: Text(
                        'Academic Interest',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text(
                        'Web Development and Database Management',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 28),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: purple,
                foregroundColor: Colors.white,

                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Hello! Thanks for viewing my profile!',
                    ),
                  ),
                );
              },

              icon: const Icon(
                Icons.waving_hand,
              ),

              label: const Text(
                'Say Hello',
              ),
            ),

            const SizedBox(height: 8),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: lightPurple,
              ),

              onPressed: () {
                showDialog(
                  context: context,

                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: darkCard,

                      title: const Text(
                        'About Me',
                        style: TextStyle(
                          color: lightPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      content: const Text(
                        'I am a BSIT student interested in '
                        'programming, technology, and software '
                        'development.',
                      ),

                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },

                          child: const Text(
                            'Close',
                          ),
                        ),
                      ],
                    );
                  },
                );
              },

              child: const Text(
                'About Me',
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
