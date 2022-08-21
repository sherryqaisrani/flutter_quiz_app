import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionPaper {
  String id;
  String title;
  String? imageUrl;
  String description;
  String timesecond;
  List<Questions>? questions;

  int questionsCount;

  QuestionPaper(
      {required this.id,
      required this.title,
      this.imageUrl,
      required this.questionsCount,
      required this.description,
      required this.timesecond,
      this.questions});

  QuestionPaper.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        imageUrl = json['imageUrl'],
        questionsCount = 0,
        description = json['description'],
        timesecond = json['timesecond'],
        questions = (json['questions'] as List)
            .map((e) => Questions.fromJson(e))
            .toList();

  QuestionPaper.dataSanpShot(DocumentSnapshot<Map<String, dynamic>> json)
      : id = json.id,
        title = json['title'],
        imageUrl = json['imageUrl'],
        questionsCount = json['questionsCount'] as int,
        description = json['description'],
        timesecond = json['timesecond'],
        questions = [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    data['description'] = description;
    data['timesecond'] = timesecond;
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  String id;
  String question;
  List<Answers> answers;
  String? correctAnswer;

  Questions(
      {required this.id,
      required this.question,
      required this.answers,
      this.correctAnswer});

  Questions.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        question = json['question'],
        answers =
            (json['answers'] as List).map((e) => Answers.fromJson(e)).toList(),
        correctAnswer = json['correct_answer'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['question'] = question;
    if (this.answers != null) {
      data['answers'] = this.answers.map((v) => v.toJson()).toList();
    }
    data['correct_answer'] = correctAnswer;
    return data;
  }
}

class Answers {
  String identifier;
  String answer;

  Answers({required this.identifier, required this.answer});

  Answers.fromJson(Map<String, dynamic> json)
      : identifier = json['identifier'],
        answer = json['Answer'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['identifier'] = identifier;
    data['Answer'] = answer;
    return data;
  }
}
