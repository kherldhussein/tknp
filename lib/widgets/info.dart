import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tknp/pages/courses/courses_help_page.dart';
import 'package:tknp/theme/theme.dart';
import 'package:tknp/widgets/card_tiles/card_tiles.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: kAppBarShape,
        title: Text('Help Center', style: TextStyle(fontSize: 20)),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        children: [
          SizedBox(height: 10),
          SettingsTitle(title: 'Help'),
          SettingsLinkButton(
            title: 'Courses',
            subtitle: 'How to read the courses',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CoursesHelpPage()));
            },
          ),
          SizedBox(height: 8),
          SettingsLinkButton(
              title: 'Registration',
              subtitle: 'Our registration process',
              onTap: null),
          SizedBox(height: 8),
          SettingsLinkButton(
              title: 'Lectures', subtitle: 'About lectures', onTap: null),
          SizedBox(height: 8),
          SettingsLinkButton(
              title: 'Timetable', subtitle: 'Help on timetable', onTap: null),
        ],
      ),
    );
  }
}
