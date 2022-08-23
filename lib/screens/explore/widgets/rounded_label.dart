import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';

class RoundedLabel extends StatelessWidget {
  const RoundedLabel(
      {Key? key,
      required this.labelName,
      required this.themeData,
      required this.isBlue})
      : super(key: key);

  final ThemeData themeData;
  final String labelName;
  final bool isBlue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isBlue ? Colors.blue[100] : Colors.red[100],
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        labelName,
        style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
            color: isBlue ? Colors.blue[600] : Colors.red[600]),
      ),
    );
  }
}
