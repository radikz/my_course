import 'package:flutter/material.dart';
import 'package:my_course/models/my_course.dart';

import 'my_course_item.dart';

class MyCourseList extends StatelessWidget {
  const MyCourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final course = ListMyCourse().myCourse;
    final themeData = Theme.of(context);
    return Column(
      children: course
          .map((c) => MyCourseItem(course: c, themeData: themeData))
          .toList(),
    );
  }
}
