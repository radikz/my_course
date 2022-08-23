import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/my_course.dart';

class MyCourseItem extends StatelessWidget {
  const MyCourseItem({
    Key? key,
    required this.course,
    required this.themeData,
  }) : super(key: key);

  final MyCourse course;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  course.photo,
                  width: 70,
                  height: 70,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: AppTheme.getTextStyle(themeData.textTheme.subtitle1),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.person, color: Colors.grey,),
                      Text(
                        course.author,
                        style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Chip(
                      label: Text(
                        'label',
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            color: Colors.blue[600]),
                      ),
                      backgroundColor: Colors.blue[100],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Progress',
                    style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
                        color: Colors.grey),
                  ),
                  Text('${course.lastProgress}/${course.endProgress} lesson',
                      style: AppTheme.getTextStyle(themeData.textTheme.subtitle1))
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Due Time',
                      style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
                          color: Colors.grey)),
                  Text(course.endDate,
                      style: AppTheme.getTextStyle(themeData.textTheme.subtitle1))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.grey[300],
          value: (course.lastProgress / course.endProgress),
          valueColor: const AlwaysStoppedAnimation<Color>(
            Colors.blue,
          ),
          minHeight: 10,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}