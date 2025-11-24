import 'package:flutter/material.dart';
import '/widgets/lesson_card.dart';

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
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          backgroundColor: const Color(0xFF0175C2),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dart_logo.png',
                height: 50,
              ),
              const SizedBox(width: 10),
              const Text(
                "Level-Up",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 55,
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
              subtitle: "Introduction to Dart",
              icon: Icons.star,
              onTap: () {
               // Navigator.push(
                 // context,
                 // MaterialPageRoute(
                  //  builder: (context) => LessonPage(title: "Beginner 1"),
                  //),
               // );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Beginner 2",
              subtitle: "Variables and Data Types",
              icon: Icons.star_border,
              onTap: () {
             //   Navigator.push(
                 // context,
                  //MaterialPageRoute(
                   // builder: (context) => LessonPage(title: "Beginner 2"),
                  //),
             //   );
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
              subtitle: "Introduction to Dart",
              icon: Icons.star,
              onTap: () {
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                //  builder: (context) => LessonPage(title: "Beginner 1"),
                //),
                // );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Medium 2",
              subtitle: "Variables and Data Types",
              icon: Icons.star_border,
              onTap: () {
                //   Navigator.push(
                // context,
                //MaterialPageRoute(
                // builder: (context) => LessonPage(title: "Beginner 2"),
                //),
                //   );
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
              subtitle: "Introduction to Dart",
              icon: Icons.star,
              onTap: () {
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                //  builder: (context) => LessonPage(title: "Beginner 1"),
                //),
                // );
              },
            ),
            const SizedBox(height: 8),

            LessonCard(
              title: "Pro 2",
              subtitle: "Variables and Data Types",
              icon: Icons.star_border,
              onTap: () {
                //   Navigator.push(
                // context,
                //MaterialPageRoute(
                // builder: (context) => LessonPage(title: "Beginner 2"),
                //),
                //   );
              },
            ),
          ],
        ),
      ),
    );
  }
}
