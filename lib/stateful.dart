import 'package:flutter/material.dart';

class InterractionPage extends StatefulWidget {
  const InterractionPage({super.key});

  @override
  State<InterractionPage> createState() => _InterractionPageState();
}

class _InterractionPageState extends State<InterractionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statful Widget'),),
      body: Center(child: Text('Hello Wordl!')),
    );
  }
}