import 'package:flutter/material.dart';
import 'package:my_course/models/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ListCategory().category;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.501,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: category.length,
      itemBuilder: (context, index){
        return _categoryItem(category[index]);
      },
    );
  }

  Widget _categoryItem(Category category) {
    return Row(
      children: [category.icon, Text(category.name)],
    );
  }
}
