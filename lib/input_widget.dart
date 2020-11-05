import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;

  Input({this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
        ),
      ),
    );
  }
}
