import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tknp/anim/animated.dart';
import 'package:tknp/widgets/card_tiles/card_tiles.dart';
import 'package:tknp/widgets/custom_app_bar.dart';
import 'package:tknp/widgets/iso_widget.dart';
import 'package:tknp/widgets/tknp_web.dart';
import 'package:url_launcher/url_launcher.dart';

/*
 todo: implement:
     [history]: school history and important events
     [location]: optional > use of real time map
     [web]: school web
 */

class AboutView extends StatefulWidget {
  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'About',
        actions: [
          IconButton(
              icon: FaIcon(FontAwesomeIcons.link),
              onPressed: () {
                Get.to(
                  () => WebGeneration2(
                      'https://portal.kisumupoly.ac.ke/about-us', ''),
                );
              })
        ],
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          children: [
            WidgetAnimator(
              Card(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/images/plogo.png'),
                            Text(
                              'The Kisumu National \nPolytechnic\n\nIndustry Succeeds',
                              style:
                                  textTheme.headline6!.copyWith(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SettingsSpacer(),
            WidgetAnimator(
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'The Kisumu National Polytechnic boasts a Distinctive Serene Environment and Modern Facilities. \n'
                      "Reputation for Quality Affordable Training Programmes,\n"
                      "Commitment to Training/Learning, Research & Innovation\n"
                      "Dedicated Spirit, Energy & Passion of Staff and LifeLong Education & Student Experiences.",
                      style: textTheme.subtitle1),
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Address'),
            WidgetAnimator(
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(
                          splashRadius: 1,
                          icon: Lottie.asset('assets/lottie/location.json'),
                          onPressed: () {
                            // Get.to(() => TKNPMAP())
                          }),
                      Text(
                        'Technology rd, Kisumu, Kenya',
                        style: textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Phone'),
            WidgetAnimator(
              Card(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child:
                        Text('+ (254) 5725 01 501', style: textTheme.subtitle1),
                  ),
                  onTap: () => launch('tel:+254572501501'),
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Mail'),
            WidgetAnimator(
              Card(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('info@kisumupoly.ac.ke',
                        style: textTheme.subtitle1),
                  ),
                  onTap: () =>
                      launch('mailto:info@kisumupoly.ac.ke?subject=TKNP App'),
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Social'),
            WidgetAnimator(
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Facebook'),
                      leading: FaIcon(FontAwesomeIcons.facebook),
                      onTap: () => launch('https://facebook.com/kisumupoly/'),
                    ),
                    ListTile(
                      title: Text('Twitter'),
                      leading: FaIcon(FontAwesomeIcons.twitter),
                      onTap: () => launch(
                          'https://twitter.com/kisumu_poly?ref_src=twsrc%5Etfw'),
                    ),
                    ListTile(
                      title: Text('GooglePlus'),
                      leading: FaIcon(FontAwesomeIcons.googlePlus),
                      onTap: () => launch(
                          'https://twitter.com/kisumu_poly?ref_src=twsrc%5Etfw'),
                    ),
                  ],
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Customer Desk'),
            WidgetAnimator(
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'If you need technical assistance with the '
                        'mobile app at any time, day or night, you call technical support team',
                        style: textTheme.subtitle1,
                      ),
                    ),
                    ListTile(
                      title: Text('+ (254) 7922 81 871',
                          style: textTheme.subtitle1),
                      onTap: () => launch('tel:+254792281871'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            IsoCertified(),
          ]),
    );
  }
}
