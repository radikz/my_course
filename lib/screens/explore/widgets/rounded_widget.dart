import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  const RoundedWidget({Key? key, required this.child, this.color = Colors.white}) : super(key: key);

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: child,
    );
  }
}
