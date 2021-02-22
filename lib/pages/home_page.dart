import 'package:flutter/material.dart';
import 'package:tknp/anim/animated.dart';
import 'package:tknp/pages/about.dart';
import 'package:tknp/pages/auth/login_page.dart';
import 'package:tknp/pages/courses/courses.dart';
import 'package:tknp/pages/settings.dart';
import 'package:tknp/util/greetings.dart';
import 'package:tknp/widgets/info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cColor = Color(0xfffdfdfd);
  final GlobalKey<ScaffoldState>? _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        key: _scaffoldKey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Kisumu National Polytechnic",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              accountEmail: Text("kisumupoly.ac.ke"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/plogo.png"),
                  matchTextDirection: true,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.forward_to_inbox),
              title: Text("Leave feedback"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Settings()));
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.live_help),
              title: Text("Help"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Information())),
            ),
            ListTile(
              leading: Icon(Icons.info_sharp),
              title: Text("About"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutView())),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: cColor,
            iconTheme: IconThemeData(color: Colors.black),
            // leading: Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: InkWell(
            //     child: ImageIcon(
            //       AssetImage('assets/images/drawer.png'),
            //       key: _scaffoldKey,
            //       size: 10,
            //       color: Colors.black,
            //     ),
            //     onTap: () => _scaffoldKey!.currentState!.openDrawer(),
            //   ),
            // ),
            elevation: 0.0,
            expandedHeight: 200,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFC).withOpacity(0.2),
                  border: Border.all(color: Color(0xFFFAFAFC).withOpacity(0.2)),
                  // borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    matchTextDirection: true,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/learn.jpg'),
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).backgroundColor.withOpacity(0.4),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
              ),
              // background: Carousel(
              //   images: [
              //     Lottie.asset('assets/lottie/class.json',
              //         repeat: true, fit: BoxFit.fill),
              //     Lottie.asset('assets/lottie/learn.json',
              //         repeat: true, fit: BoxFit.fill),
              //     Lottie.asset('assets/lottie/back.json',
              //         fit: BoxFit.fill, repeat: true),
              //     Lottie.asset('assets/lottie/ready-to-learn.json',
              //         fit: BoxFit.fill, repeat: true),
              //     Image.asset("assets/images/learn.jpg", fit: BoxFit.fill),
              //     Image.asset("assets/images/haul.jpg", fit: BoxFit.fill),
              //     Image.asset("assets/images/learn.jpg", fit: BoxFit.fill),
              //     // Image.asset("assets/images/learn.jpg", fit: BoxFit.fill),
              //   ],
              //   animationCurve: Curves.easeIn,
              //   dotIncreasedColor: kDarkSecondaryColor,
              //   dotColor: kLightPrimaryColor,
              //   dotSize: 5.0,
              // ),
            ),
            // backgroundColor: kDarkPrimaryColor,
            // elevation: 0.w,
            floating: true,
            // expandedHeight: 0.26.hp,
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
                // color: cColor,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '${Greetings().greet()}',
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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TknpCourses()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.school,
                      color: Color(0xffeff0f2),
                      text: 'PORTAL',
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => StudentPortal()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.important_devices_sharp,
                      color: Color(0xfff99562),
                      text: 'EVENTS',
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => StudentPortal()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.computer_sharp,
                      color: Color(0xff01ab68),
                      text: 'E-LEARN',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.calendar_today_outlined,
                      color: Color(0xff1c6d83),
                      text: 'CALENDAR',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.calendar_today,
                      color: Color(0xff00012d),
                      text: 'TIMETABLE',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.download_outlined,
                      color: Color(0x455f03c7),
                      text: 'DOWNLOADS',
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.home_work_outlined,
                      color: Color(0xff21000a),
                      text: 'HOSTELS',
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    DisplayButton(
                      icon: Icons.explore,
                      color: Color(0xffc609a2),
                      text: 'WEB PAGE',
                      onTap: () {},
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
                              icon: Icon(icon, color: color), onPressed: () {}),
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
