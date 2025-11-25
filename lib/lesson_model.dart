class Lesson {
  final String title;
  final String paragraph;
  final String question;
  final List<String> options;
  final int answer;

  Lesson({
    required this.title,
    required this.paragraph,
    required this.question,
    required this.options,
    required this.answer,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      title: json["title"],
      paragraph: json["paragraph"],
      question: json["question"],
      options: List<String>.from(json["options"]),
      answer: json["answer"],
    );
  }
}
