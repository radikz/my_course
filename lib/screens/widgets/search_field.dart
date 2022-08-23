import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Type someting here',
            contentPadding: EdgeInsets.all(15),
            border: InputBorder.none),
        onChanged: (value) {},
      ),
    );
  }
}
