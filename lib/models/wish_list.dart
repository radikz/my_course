import 'package:my_course/models/review.dart';

import 'course.dart';
import 'curriculum.dart';

class WishList {
  List<Course> get popular => [..._popular];

  final List<Course> _popular = [
    Course(
      title: "Gather User Research",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_book.jpg",
      author: "Robert Fox",
      totalStudent: "143.465",
      score: 4.8,
      language: "English",
      amount: 150,
      label: const Label(
        name: "Best Seller",
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
      lastUpdate: DateTime.now(),
    ),
    Course(
      title: "User Behaviour Research",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "Wade Warren",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 24,
      label: const Label(
        name: "Recommended",
        isBlue: true,
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
      title: "UX Basic 101 - Summary",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "Nelson Poynor",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 24,
      label: const Label(
        name: "Recommended",
        isBlue: true,
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
      title: "UX Deliverable Explaination",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "Nelson Poynor",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 24,
      label: const Label(
        name: "Recommended",
        isBlue: true,
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
      title: "Adobe Photoshop Mastery",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "Frannie Cordal",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 24,
      label: const Label(
        name: "Recommended",
        isBlue: true,
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
      title: "Tensorflow for Beginner",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      image: "assets/m_ic_android_dev.jpg",
      author: "Horatia Kaye",
      totalStudent: "143.465",
      language: "English",
      score: 4.8,
      amount: 24,
      label: const Label(
        name: "Recommended",
        isBlue: true,
      ),
      isFavorite: true,
      curriculum: [
        const Curriculum(chapter: "Introduction", time: "00:53 mins"),
        const Curriculum(
            chapter: "Design Thinking in Product", time: "05:25 mins"),
        const Curriculum(
            chapter: "Improvind Design Method", time: "05:35 mins"),
      ],
      lastUpdate: DateTime.now(),
    ),
  ];
}
