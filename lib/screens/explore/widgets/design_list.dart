import 'package:flutter/material.dart';
import 'package:my_course/models/design_course.dart';
import 'package:my_course/screens/explore/widgets/popular_item.dart';

class DesignList extends StatelessWidget {
  const DesignList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final design = DesignCourse().design;

    return ListView.separated(
      itemCount: design.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return PopularItem(
          height: 100,
          width: 150,
          course: design[index],
        );
      },
      separatorBuilder: (ctx, _){
        return const SizedBox(width: 10,);
      },
    );
  }
}
