import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Widget childWidget;

  const MyBox({
    super.key,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: childWidget,
    );
  }
}
