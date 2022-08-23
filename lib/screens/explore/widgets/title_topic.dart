import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/explore/widgets/rounded_label.dart';

class TitleTopic extends StatelessWidget {
  const TitleTopic({Key? key, required this.title, required this.themeData, this.labelName}) : super(key: key);

  final String title;
  final ThemeData themeData;
  final String? labelName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: labelName != null ? Row(
            children: [
              Text(
                title,
                style: AppTheme.getTextStyle(themeData.textTheme.headline6),
              ),
              const SizedBox(
                width: 10,
              ),
              RoundedLabel(labelName: labelName!, themeData: themeData, isBlue: true,)
            ],
          ) : Text(
            title,
            style: AppTheme.getTextStyle(themeData.textTheme.headline6),
          ) ,
        ),
        Text(
          "See All",
          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
              color: Colors.blue),
        )
      ],
    );
  }
}
