import 'package:flutter/material.dart' show Icon, Icons;

class ListCategory {
  List<Category> get category => [..._category];

  final List<Category> _category = [
    const Category(name: "Art", icon: Icon(Icons.star)),
    const Category(name: "Coding", icon: Icon(Icons.code)),
    const Category(name: "Design", icon: Icon(Icons.design_services)),
    const Category(name: "Business", icon: Icon(Icons.business)),
    const Category(name: "Marketing", icon: Icon(Icons.percent)),
    const Category(name: "Lifestyle", icon: Icon(Icons.wine_bar)),
  ];
}

class Category {
  final String name;
  final Icon icon;

  const Category({
    required this.name,
    required this.icon,
  });
}