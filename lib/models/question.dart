class Question {
  final String title;
  final String question;
  final List<String> selects;
  final List<String> answer;

  Question({
    required this.title,
    required this.question,
    required this.selects,
    required this.answer,
  });

  // JSON 데이터로부터 Question 객체를 생성하는 팩토리 생성자
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      title: json['title'],
      question: json['question'],
      selects: List<String>.from(json['selects']),
      answer: List<String>.from(json['answer']),
    );
  }
}
