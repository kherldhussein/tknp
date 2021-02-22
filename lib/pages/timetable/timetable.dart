import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  /// Anim somewhere indicating for future
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('My Future'
              'My Timetable'
              'Support this project for more features')
        ],
      ),
    );
  }
}
