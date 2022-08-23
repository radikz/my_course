import 'package:my_course/models/review.dart';

import 'course.dart';
import 'curriculum.dart';

class CodingCourse {
  List<Course> get coding => [..._coding];

  final List<Course> _coding = [
    Course(
      title: "Flutter Course from Zero to Hero",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_ai.jpg",
      author: "Diane Russel",
      totalStudent: "143.465",
      score: 4.8,
      language: "English",
      amount: 97,
      isFavorite: true,
      curriculum: [
        const Curriculum(chapter: "Introduction", time: "00:53 mins"),
        const Curriculum(
            chapter: "Design Thinking in Product", time: "05:25 mins"),
        const Curriculum(
            chapter: "Improvind Design Method", time: "05:35 mins"),
      ],
      review: [
        const Review(
            photo: "assets/m_ic_ai.jpg",
            name: "Gianna Lawerence",
            time: "1 day ago",
            score: 4.8,
            overallScore: 4.8,
            description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
      ],
      lastUpdate: DateTime.now(),
    ),
    Course(
      title: "Tensorflow mastery",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_design.jpg",
      author: "Jacob Jones",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 56,
      isFavorite: true,
      curriculum: [
        const Curriculum(chapter: "Introduction", time: "00:53 mins"),
        const Curriculum(
            chapter: "Design Thinking in Product", time: "05:25 mins"),
        const Curriculum(
            chapter: "Improvind Design Method", time: "05:35 mins"),
      ],
      review: [
        const Review(
            photo: "assets/m_ic_ai.jpg",
            name: "Gianna Lawerence",
            time: "1 day ago",
            score: 4.8,
            overallScore: 4.8,
            description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
      ],
      lastUpdate: DateTime.now(),
    ),
    Course(
      title: "Typescript Basics",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "John Doe",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 41,
      isFavorite: true,
      curriculum: [
        const Curriculum(chapter: "Introduction", time: "00:53 mins"),
        const Curriculum(
            chapter: "Design Thinking in Product", time: "05:25 mins"),
        const Curriculum(
            chapter: "Improvind Design Method", time: "05:35 mins"),
      ],
      review: [
        const Review(
            photo: "assets/m_ic_ai.jpg",
            name: "Gianna Lawerence",
            time: "1 day ago",
            score: 4.8,
            overallScore: 4.8,
            description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
      ],
      lastUpdate: DateTime.now(),
    )
  ];
}