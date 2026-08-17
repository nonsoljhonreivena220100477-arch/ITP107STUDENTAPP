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

        scaffoldBackgroundColor: const Color(0xFF0B0B0F),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),

        fontFamily: 'Arial',

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0B0B0F),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        cardTheme: const CardThemeData(
          color: Color(0xFF15151C),
          elevation: 0,
        ),
      ),

      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  static const Color purple = Color(0xFF8B5CF6);
  static const Color lightPurple = Color(0xFFA78BFA);
  static const Color darkBackground = Color(0xFF0B0B0F);
  static const Color cardColor = Color(0xFF15151C);
  static const Color softCard = Color(0xFF1B1B24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person_outline,
              color: lightPurple,
            ),
            SizedBox(width: 8),
            Text(
              'Student Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            tooltip: 'About Me',
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: cardColor,
                    title: const Text(
                      'About Me',
                      style: TextStyle(
                        color: lightPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: const Text(
                      'I am a BSIT student interested in '
                      'programming, technology, web development, '
                      'and software development.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // ============================================================
            // HERO SECTION
            // ============================================================

            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              padding: const EdgeInsets.fromLTRB(24, 35, 24, 30),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF26104A),
                    Color(0xFF120D1C),
                    Color(0xFF08080B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),

                borderRadius: BorderRadius.circular(30),

                border: Border.all(
                  color: purple.withValues(alpha: 0.45),
                  width: 1.2,
                ),

                boxShadow: [
                  BoxShadow(
                    color: purple.withValues(alpha: 0.15),
                    blurRadius: 30,
                    spreadRadius: 2,
                  ),
                ],
              ),

              child: Column(
                children: [
                  // PROFILE IMAGE
                  Container(
                    width: 145,
                    height: 145,

                    padding: const EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFA78BFA),
                          Color(0xFF7C3AED),
                          Color(0xFF4C1D95),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: purple.withValues(alpha: 0.5),
                          blurRadius: 25,
                          spreadRadius: 3,
                        ),
                      ],
                    ),

                    child: CircleAvatar(
                      backgroundColor: Colors.black,

                      child: ClipOval(
                        child: Image.asset(
                          'assets/ReivenPicture.jpg',

                          width: 135,
                          height: 135,

                          fit: BoxFit.cover,

                          errorBuilder: (
                            context,
                            error,
                            stackTrace,
                          ) {
                            return const Icon(
                              Icons.person,
                              size: 75,
                              color: lightPurple,
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  const Text(
                    'JHON REIVEN NONSOL',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    '"Kaka"',
                    style: TextStyle(
                      color: lightPurple,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // COURSE / YEAR
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _badge(
                        icon: Icons.school_outlined,
                        text: 'BS Information Technology',
                      ),

                      _badge(
                        icon: Icons.person_outline,
                        text: '3rd Year',
                      ),

                      _badge(
                        icon: Icons.class_outlined,
                        text: '3IT-B',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ============================================================
            // QUICK STATS
            // ============================================================

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;

                  double itemWidth;

                  if (width >= 900) {
                    itemWidth = (width - 24) / 3;
                  } else if (width >= 550) {
                    itemWidth = (width - 12) / 2;
                  } else {
                    itemWidth = width;
                  }

                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,

                    children: [
                      SizedBox(
                        width: itemWidth,
                        child: _statCard(
                          icon: Icons.cake_outlined,
                          number: '20',
                          label: 'Years Old',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _statCard(
                          icon: Icons.code,
                          number: '4+',
                          label: 'Languages',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _statCard(
                          icon: Icons.terminal,
                          number: '3+',
                          label: 'Tech Skills',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 35),

            // ============================================================
            // PERSONAL INFORMATION
            // ============================================================

            _sectionTitle(
              icon: Icons.person_outline,
              title: 'Personal Information',
              subtitle: 'A quick look at who I am',
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;

                  double itemWidth;

                  if (width >= 850) {
                    itemWidth = (width - 12) / 2;
                  } else {
                    itemWidth = width;
                  }

                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,

                    children: [
                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.person,
                          title: 'Full Name',
                          value: 'Jhon Reiven Nonsol',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.badge_outlined,
                          title: 'Nickname',
                          value: 'Kaka',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.cake_outlined,
                          title: 'Age',
                          value: '20 years old',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.calendar_month,
                          title: 'Birthday',
                          value: 'November 08, 2005',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.location_on_outlined,
                          title: 'Address',
                          value: 'Cabuyao, Laguna',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.sports_esports_outlined,
                          title: 'Hobby',
                          value: 'Programming, Gaming, Technology',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.format_quote,
                          title: 'Motto',
                          value:
                              'Kung hindi mo sila kayang pigilan, '
                              'ito nalang ay iyong sabayan.',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.school_outlined,
                          title: 'Course / Program',
                          value:
                              'Bachelor of Science in Information Technology',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.groups_outlined,
                          title: 'Year Level',
                          value: '3rd Year',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _infoCard(
                          icon: Icons.class_outlined,
                          title: 'Section',
                          value: '3IT-B',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 35),

            // ============================================================
            // ACADEMIC INFORMATION
            // ============================================================

            _sectionTitle(
              icon: Icons.school_outlined,
              title: 'Academic Information',
              subtitle: 'My interests, skills, and goals',
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;

                  double itemWidth;

                  if (width >= 850) {
                    itemWidth = (width - 24) / 3;
                  } else if (width >= 550) {
                    itemWidth = (width - 12) / 2;
                  } else {
                    itemWidth = width;
                  }

                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,

                    children: [
                      SizedBox(
                        width: itemWidth,
                        child: _academicCard(
                          icon: Icons.favorite,
                          iconColor: Colors.pinkAccent,
                          title: 'Favorite Subject',
                          value: 'ITP107',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _academicCard(
                          icon: Icons.code,
                          iconColor: lightPurple,
                          title: 'Programming Language',
                          value: 'Java, PHP, JavaScript, Dart',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _academicCard(
                          icon: Icons.computer,
                          iconColor: Colors.cyanAccent,
                          title: 'Technical Skill',
                          value:
                              'Web Development and Database Management',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _academicCard(
                          icon: Icons.work_outline,
                          iconColor: Colors.orangeAccent,
                          title: 'Career Goal',
                          value:
                              'Become a professional Web Developer (WFH)',
                        ),
                      ),

                      SizedBox(
                        width: itemWidth,
                        child: _academicCard(
                          icon: Icons.lightbulb_outline,
                          iconColor: Colors.amber,
                          title: 'Academic Interest',
                          value:
                              'Web Development and Database Management',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 35),

            // ============================================================
            // MOTTO / QUOTE CARD
            // ============================================================

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: Card(
                color: const Color(0xFF18121F),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),

                  side: BorderSide(
                    color: purple.withValues(alpha: 0.35),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),

                        decoration: BoxDecoration(
                          color: purple.withValues(alpha: 0.15),
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.format_quote,
                          color: lightPurple,
                          size: 28,
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              'My Motto',
                              style: TextStyle(
                                color: lightPurple,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 7),

                            Text(
                              '“Kung hindi mo sila kayang pigilan, '
                              'ito nalang ay iyong sabayan.”',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 1.5,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ============================================================
            // BUTTONS
            // ============================================================

            Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 12,

              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    foregroundColor: Colors.white,

                    elevation: 8,

                    shadowColor: purple.withValues(alpha: 0.4),

                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: lightPurple,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 15,
                    ),
                  ),

                  onPressed: () {
                    showDialog(
                      context: context,

                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: cardColor,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),

                          title: const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: lightPurple,
                              ),

                              SizedBox(width: 10),

                              Text(
                                'About Me',
                                style: TextStyle(
                                  color: lightPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          content: const Text(
                            'I am Jhon Reiven Nonsol, a BSIT student '
                            'who is interested in programming, '
                            'technology, web development, and '
                            'software development.',
                          ),

                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },

                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },

                  icon: const Icon(
                    Icons.info_outline,
                  ),

                  label: const Text(
                    'About Me',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            
          ],
        ),
      ),
    );
  }

 
  static Widget _badge({
    required IconData icon,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: purple.withValues(alpha: 0.15),

        borderRadius: BorderRadius.circular(30),

        border: Border.all(
          color: purple.withValues(alpha: 0.5),
        ),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Icon(
            icon,
            color: lightPurple,
            size: 17,
          ),

          const SizedBox(width: 7),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _statCard({
    required IconData icon,
    required String number,
    required String label,
  }) {
    return Card(
      color: cardColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),

        side: BorderSide(
          color: purple.withValues(alpha: 0.2),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: purple.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Icon(
                icon,
                color: lightPurple,
                size: 26,
              ),
            ),

            const SizedBox(width: 14),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  

  static Widget _sectionTitle({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            padding: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: purple.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(14),
            ),

            child: Icon(
              icon,
              color: lightPurple,
              size: 24,
            ),
          ),

          const SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  
  static Widget _infoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      color: cardColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),

        side: BorderSide(
          color: Colors.white.withValues(alpha: 0.06),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
                color: purple.withValues(alpha: 0.13),
                borderRadius: BorderRadius.circular(13),
              ),

              child: Icon(
                icon,
                color: lightPurple,
                size: 22,
              ),
            ),

            const SizedBox(width: 13),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _academicCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return Card(
      color: softCard,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),

        side: BorderSide(
          color: iconColor.withValues(alpha: 0.2),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Icon(
                icon,
                color: iconColor,
                size: 27,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}