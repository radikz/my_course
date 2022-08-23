import 'package:flutter/material.dart';

class SortDropdown extends StatefulWidget {
  const SortDropdown({Key? key}) : super(key: key);

  @override
  State<SortDropdown> createState() => _SortDropdownState();
}

class _SortDropdownState extends State<SortDropdown> {
  String dropdownValue = 'Most recent';

  static const items = <String>["Most recent", "Overall Score"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((e) {
          return DropdownMenuItem(value: e, child: Text(e));
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!.isEmpty ? "Most recent" : newValue;
          });
        });
  }
}
