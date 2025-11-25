import 'package:flutter/material.dart';
import '/widgets/lesson_card.dart';
import 'lesson_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: const Color(0xFF0175C2),
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  'assets/images/logo.png',
                  height: 40,
              ),

              const SizedBox(width: 10),
              const Text(
                "Dart Level-Up",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Beginner",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Beginner 1",
              subtitle: "What is Dart mainly used for?",
              icon: Icons.star,
              onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                    builder: (context) => const LessonPage(fileName: "beginner1.json"),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Beginner 2",
              subtitle: "Variables and Data Types",
              icon: Icons.star_border,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LessonPage(fileName: "beginner2.json"),
                  ),
               );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Medium",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Medium 1",
              subtitle: "Functions in Dart",
              icon: Icons.star,
              onTap: () {
                 Navigator.push(
                context,
                 MaterialPageRoute(
                   builder: (context) => const LessonPage(fileName: "medium1.json"),
                ),
                 );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Medium 2",
              subtitle: "Which collection stores data in key-value pairs?",
              icon: Icons.star_border,
              onTap: () {
                   Navigator.push(
                 context,
                MaterialPageRoute(
                  builder: (context) => const LessonPage(fileName: "medium2.json"),
                ),
                   );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Pro",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "pro 1",
              subtitle: "OOP – Classes and Objects",
              icon: Icons.star,
              onTap: () {
                Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => const LessonPage(fileName: "pro1.json"),
                ),
                 );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Pro 2",
              subtitle: "Asynchronous Programming",
              icon: Icons.star_border,
              onTap: () {
                  Navigator.push(
                 context,
                MaterialPageRoute(
                  builder: (context) => const LessonPage(fileName: "pro2.json"),
                ),
                   );
              },
            ),
          ],
        ),
      ),
    );
  }
}
