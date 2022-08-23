import 'package:my_course/models/review.dart';

import 'course.dart';
import 'curriculum.dart';

class DesignCourse {
  List<Course> get design => [..._design];

  final List<Course> _design = [
    Course(
      title: "Design Thinking Fundamental",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_ai.jpg",
      author: "Diane Russel",
      totalStudent: "143.465",
      score: 4.8,
      language: "English",
      amount: 75,
      label: const Label(
        name: "Best Deal",
        isBlue: false,
      ),
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
      title: "Figma Prototyping",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_design.jpg",
      author: "Jacob Jones",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 32,
      isFavorite: false,
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
      title: "UI/UX Android",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "John Doe",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 83,
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
