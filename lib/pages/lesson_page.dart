import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/lesson_model.dart';

class LessonPage extends StatefulWidget {
  final String fileName;

  const LessonPage({super.key, required this.fileName});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  Lesson? lesson;
  int? selected;

  @override
  void initState() {
    super.initState();
    loadLesson();
  }

  Future<void> loadLesson() async {
    final String jsonText =
    await rootBundle.loadString("assets/lessons/${widget.fileName}");

    setState(() {
      lesson = Lesson.fromJson(jsonDecode(jsonText));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (lesson == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(lesson!.title),
        backgroundColor: const Color(0xFF0175C2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            Text(
              lesson!.paragraph,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),

            const SizedBox(height: 30),


            Text(
              lesson!.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            for (int i = 0; i < lesson!.options.length; i++)
              RadioListTile(
                title: Text(lesson!.options[i]),
                value: i,
                groupValue: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: selected == null
                  ? null
                  : () {
                bool correct = selected == lesson!.answer;

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(
                      correct ? "Correct!" : "Wrong!",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    content: Text(
                      correct
                          ? "Great job!"
                          : "Correct answer: ${lesson!.options[lesson!.answer]}",
                    ),
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Check Answer"),
            ),
          ],
        ),
      ),
    );
  }
}
