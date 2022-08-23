import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/course.dart';
import 'package:my_course/screens/detail/detail_screen.dart';
import 'package:my_course/screens/explore/widgets/rounded_label.dart';

import 'image_card.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    Key? key,
    required this.height,
    required this.width,
    required this.course,
  }) : super(key: key);

  final double height;
  final double width;
  final Course course;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: course);
      },
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageCard(
              image: course.image,
              score: course.score,
              themeData: themeData,
              height: height,
              width: width,
              isFavorite: course.isFavorite,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              course.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.getTextStyle(themeData.textTheme.subtitle1),
            ),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                Text(
                  course.author,
                  style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                      color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${course.amount.toStringAsFixed(0)}',
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
                      color: Colors.blue),
                ),
                const SizedBox(
                  width: 5,
                ),
                course.label == null
                    ? const SizedBox()
                    : RoundedLabel(
                      labelName: course.label!.name,
                      themeData: themeData,
                      isBlue: course.label!.isBlue,
                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}
