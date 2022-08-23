import 'package:my_course/models/curriculum.dart';
import 'package:my_course/models/review.dart';

class Course {
  final String title;
  final String description;
  final String image;
  final String author;
  final String totalStudent;
  final String language;
  final double score;
  final Label? label;
  final double amount;
  final bool isFavorite;
  final List<Curriculum> curriculum;
  final List<Review>? review;
  final DateTime lastUpdate;

  const Course({
    required this.title,
    required this.description,
    required this.image,
    required this.author,
    required this.totalStudent,
    required this.language,
    required this.score,
    this.label,
    required this.amount,
    this.isFavorite = false,
    required this.curriculum,
    this.review,
    required this.lastUpdate,
  });
}

class Label {
  final bool isBlue;
  final String name;

  const Label({
    this.isBlue = false,
    required this.name,
  });
}