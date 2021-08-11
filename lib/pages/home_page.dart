import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:tknp/anim/animated.dart';
import 'package:tknp/pages/about.dart';
import 'package:tknp/pages/auth/login_page.dart';
import 'package:tknp/pages/courses/courses.dart';
import 'package:tknp/pages/settings.dart';
import 'package:tknp/pages/timetable/timetable.dart';
import 'package:tknp/theme/theme.dart';
import 'package:tknp/util/greetings.dart';
import 'package:tknp/util/ui_helpers.dart';
import 'package:tknp/util/utils.dart';
import 'package:tknp/widgets/info.dart';
import 'package:tknp/widgets/tknp_web.dart';
import 'package:wiredash/wiredash.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cColor = Color(0xfffdfdfd);
  final GlobalKey<ScaffoldState>? _scaffoldKey = GlobalKey();
  final name = 'TKNP v.0.4-alpha';
  late String uName;
  @override
  void initState() {
    uName = Utils().name;
    super.initState();
  }
  static DelayUI shareDelay = DelayUI(Duration(seconds: 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(""),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Wiredash.of(context)!.setBuildProperties(buildVersion: name);
                Wiredash.of(context)!.show();
              },
              leading: FaIcon(FontAwesomeIcons.commentDots),
              title: Text("Leave feedback"),
            ),
            ListTile(
              onTap: () =>
                shareDelay.run(() => Share.share('Hey! checkout Kisumupoly App',subject: 'Get it from: https://github.com/kherld-hussein/tknp/releases/')),
              leading: FaIcon(FontAwesomeIcons.shareAlt),
              title: Text("Share"),
            ),
            ListTile(
              onTap: () {
                _close();
                Get.to(Settings());
              },
              leading: FaIcon(FontAwesomeIcons.cog),
              title: Text("Settings"),
            ),
            Divider(height: 64, thickness: 1),
            ListTile(
                leading: FaIcon(Icons.live_help),
                title: Text("Help"),
                onTap: () {
                  _close();
                  Get.to(Information());
                }),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.infoCircle),
              title: Text("About"),
              onTap: () {
                _close();
                Get.to(AboutView());
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0.0,
            expandedHeight: 200,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Carousel(
                images: [
                  Image.asset("assets/images/learn.jpg", fit: BoxFit.fill),
                  Image.asset("assets/images/slide2.jpg", fit: BoxFit.fill),
                  Image.asset('assets/images/slide1.jpg', fit: BoxFit.fill),
                  Image.asset("assets/images/learn.jpg", fit: BoxFit.fill),
                ],
                animationCurve: Curves.easeIn,
                dotIncreasedColor: kDarkSecondaryColor,
                dotColor: kLightPrimaryColor,
                dotSize: 5.0,
              ),
            ),
            leading: IconButton(
              icon: Image.asset('assets/images/drawer.png', scale: 5),
              iconSize: 10,
              onPressed: _scaffoldKey!.currentState!.openDrawer,
            ),
            floating: true,
            pinned: true,
          ),
          SliverFillRemaining(
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0.0),
                    color: Theme.of(context).scaffoldBackgroundColor),
              ),
              SizedBox(height: 10),
              Container(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Good $dayGreeting $uName',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "We are happy you are here",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                    ),
                    DisplayButton(
                      icon: Icons.library_books,
                      color: Color(0xb4eaa705),
                      text: 'COURSES',
                      onTap: () => Get.to(() => TknpCourses()),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.graduationCap,
                      color: Color(0xffeff0f2),
                      text: 'PORTAL',
                      onTap: () {

                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.connectdevelop,
                      color: Color(0xfff99562),
                      text: 'EVENTS',
                        onTap: () => Get.to(() => WebGeneration2(
                            'https://kisumupoly.ac.ke/news', 'News & Events')),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.laptopHouse,
                      color: Color(0xff01ab68),
                      text: 'E-LEARN',
                      onTap: () => Get.to(() => LearningPage()),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.book,
                      color: Color(0xffeff0f2),
                      text: 'LIBRARY',
                      onTap: () => Get.to(
                            () => WebGeneration2(
                            'https://kisumupoly.ac.ke/index.php/library-resources',
                            'LIBRARY'),
                      ),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.calendarAlt,
                      color: Color(0xff1c6d83),
                      text: 'CALENDAR',
                      onTap: () => Get.to(() => LoginPage()),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.calendar,
                      color: Color(0xff00012d),
                      text: 'TIMETABLE',
                      onTap: () => Get.to(() => Timetable()),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.fileDownload,
                      color: Color(0x455f03c7),
                      text: 'DOWNLOADS',
                      onTap: () => Get.to(() => WebGeneration2(
                          'https://kisumupoly.ac.ke/student-downloads',
                          'Student Downloads')),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.school,
                      color: Color(0xff21000a),
                      text: 'HOSTELS',
                      onTap: () => Get.to(() => WebGeneration2(
                          'https://kisumupoly.ac.ke/under-construction', '')),
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: FontAwesomeIcons.internetExplorer,
                      color: Color(0xffc609a2),
                      text: 'WEB PAGE',
                      onTap: () => Get.to(
                              () => WebGeneration2('https://kisumupoly.ac.ke', '')),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
  void _close() => Get.back();
}

class DisplayButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Color? color;
  final VoidCallback onTap;

  const DisplayButton(
      {Key? key, this.icon, this.color, this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      InkWell(
        onTap: onTap,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: color!.withOpacity(0.1)),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(icon, color: color), onPressed: ()=> onTap),
                        ],
                      ),
                    ),
                    Text(
                      text!,
                      style: TextStyle(
                          color: Color(0xff012464),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
