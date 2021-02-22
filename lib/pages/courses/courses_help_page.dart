import 'package:flutter/material.dart';
import 'package:tknp/theme/theme.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:tknp/theme/theme.dart';
// import 'package:url_launcher/url_launcher.dart';

class CoursesHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: kAppBarShape,
        title: Text('Courses Help'),
        actions: <Widget>[
          // IconButton(
          //   icon: FaIcon(FontAwesomeIcons.externalLinkAlt),
          //   onPressed: _launchURL,
          // )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          children: <Widget>[
            Text('How To:',),
            Text('Read Courses guide',),
            SizedBox(height: 20),
            Text(
              'Click to your favourite department in the category. A pop up will '
              'appear showing the courses details as offered on each department.'
              '\n',
              style: kTitleLightTextStyle,
            ),
            Text(
              'The bottom popup is divided into rows and columns.'
              'Each row shows shows course title in bold and below it is '
              'the minimum requirement.'
              'On far end shows admission time/duration, and below it is the '
              'exam body for the course.\n'
              'For more info click the icon bar above',
              style: kTitleLightTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
