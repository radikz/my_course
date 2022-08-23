import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/curriculum.dart';

class CurriculumExtension extends StatelessWidget {
  const CurriculumExtension({Key? key, required this.curriculum}) : super(key: key);

  final Curriculum curriculum;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        title: Text(curriculum.chapter, style: AppTheme.getTextStyle(themeData.headline6),),
        subtitle: Text(curriculum.time, style: AppTheme.getTextStyle(themeData.subtitle2, color: Colors.grey),),
        trailing: IconButton(
          icon: const Icon(Icons.play_circle_outline, color: Colors.blue, size: 36,),
          onPressed: (){},
          color: Colors.blue,
        ),
      ),
    );
  }
}
