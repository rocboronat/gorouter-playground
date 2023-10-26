import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  final String label;

  const ExampleScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Center(
          child: Text(
        "This is page $label",
        style: Theme.of(context).textTheme.headlineLarge,
      )),
    );
  }
}
