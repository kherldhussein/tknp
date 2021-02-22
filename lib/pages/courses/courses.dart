import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tknp/pages/courses/courses_help_page.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:stacked_services/stacked_services.dart';
// import 'package:tknp/models/locator.dart';
// import 'package:tknp/utils/router.gr.dart';
// import 'package:tknp/views/info.dart';

// import '../../theme/theme.dart';

class TknpCourses extends StatefulWidget {
  @override
  _TknpCoursesState createState() => _TknpCoursesState();
}

class _TknpCoursesState extends State<TknpCourses> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final offTheme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: offTheme.colorScheme.surface.withOpacity(0.5)),
                  child: IconButton(
                    splashRadius: 10,
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                actions: [
                  IconButton(
                      splashRadius: 10,
                      icon: Icon(Icons.info),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoursesHelpPage()));
                      })
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Search'),
                      ),
                    ),
                    // SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () async {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Pursue your desired Career with us",
                textAlign: TextAlign.center,
                style: textTheme.subtitle1!.copyWith(
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  // Container(
                  //   child: Center(
                  //     child: Text(
                  //       "Courses",
                  //       style: textTheme.headline6!.copyWith(
                  //         fontSize: 28,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  //   // color: kse,
                  // ),
                  Container(
                    height: 520,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Electrical Engineering",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showCupertinoModalPopup(
                              context: context,
                              builder: (context) => ListView(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                                children: <Widget>[
                                  SizedBox(height: 14),
                                  Center(
                                    child: Text(
                                      "Electrical Engineering Department",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Diploma in Electrical and Electronic Technology(Power Option)",
                                      ),
                                      subtitle: Text(
                                          "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ"),
                                      trailing: Text("January & Sept\n KNEC"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Diploma in Electrical & Electronic Technology (Telecommunication Option)",
                                      ),
                                      subtitle: Text(
                                          "KCSE Mean Grade C-; D+ in Maths & Physics OR KNEC Craft Cert for module ⅠⅠ"),
                                      trailing: Text("January and Sept\n KNEC"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Electrical & Electronic Technology ",
                                      ),
                                      subtitle: Text(
                                          "KCSE Mean Grade D+(Plus) D in Maths & Physics"),
                                      trailing: Text("January & Sept\n KNEC"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Electrical Installation & maintenance",
                                      ),
                                      subtitle:
                                          Text("KCSE Mean grade of D (Plain)"),
                                      trailing: Text(
                                          "2 Terms. Intake in \nJan/May/Sept \n TKNP"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        'Basic Computer repair & Maintenance',
                                      ),
                                      subtitle: Text(
                                          "KCSE Mean grade of D+ Must be Computer Literate"),
                                      trailing:
                                          Text("1 Term Jan/May/Sept \n TKNP"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        'Advance Computer repair & Maintenance',
                                      ),
                                      subtitle: Text(
                                          "Basic Computer repair & Maintenance"),
                                      trailing:
                                          Text("2 Terms Jan/May/Sept \n TKNP"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Cert in Electronic Technology",
                                      ),
                                      subtitle: Text("KCSE D (Plain)"),
                                      trailing: Text("1 yr\n City & Guilds"),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        "Diploma in Electronic Technology",
                                      ),
                                      subtitle:
                                          Text("Cert in Electronic Technology"),
                                      trailing: Text("1 yr\n City & Guilds"),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Mechanical Engineering",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Mechanical Engineering',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Automotive Engineering",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Automotive Engineering',
                                      style: textTheme.headline6!
                                          .copyWith(fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Building & Civil Engineering",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Building & Civil Engineering',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Computer Science & Mathematics",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Computer Science & Mathematics',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Hospitality, Nutrition & Dietetics",
                              style: textTheme.subtitle1!,
                            ),
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Hospitality, Nutrition & Dietetics',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Applied Science',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Applied Science",
                              style: textTheme.subtitle1!,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Business Studies',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Business Studies",
                              style: textTheme.subtitle1!,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Entrepreneurship Education',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            tileColor: offTheme.cardColor,
                            title: Text(
                              "Entrepreneurship Education",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            tileColor: offTheme.cardColor,
                            onTap: () => showCupertinoModalPopup(
                              context: context,
                              builder: (context) => Card(
                                child: ListView(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  children: <Widget>[
                                    SizedBox(height: 14),
                                    Text(
                                      "Liberal Studies Department",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(height: 10),
                                    Card(
                                      child: ListTile(
                                        title: Text(
                                          "Diploma in information science",
                                        ),
                                        subtitle: Text(
                                            "KCSE Mean Grade C-(Minus) OR a relevant KNEC Craft Cert"),
                                        trailing:
                                            Text("January and Sept\n KNEC"),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Card(
                                      child: ListTile(
                                        title: Text(
                                          "Diploma in Counseling ",
                                        ),
                                        subtitle: Text(
                                            "KCSE Mean Grade C-(Minus) OR a relevant KNEC Craft Cert"),
                                        trailing:
                                            Text("January and Sept\n KNEC"),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Card(
                                      child: ListTile(
                                        title: Text(
                                          "Diploma Social work and Community Dev ",
                                        ),
                                        subtitle: Text(
                                            "KCSE Mean Grade C-(Minus) OR a relevant KNEC Craft Cert"),
                                        trailing:
                                            Text("January and Sept\n KNEC"),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Card(
                                      child: ListTile(
                                        title: Text(
                                          "Craft Certificate in Social work and Community Dev ",
                                        ),
                                        subtitle: Text(
                                            "K.C.S.E Mean grade of D+ (Plus)"),
                                        trailing:
                                            Text("May Intake ONLY \n KNEC"),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                            title: Text(
                              "Liberal Studies",
                              style: textTheme.subtitle1!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
