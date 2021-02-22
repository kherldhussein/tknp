import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tknp/anim/animated.dart';
import 'package:tknp/widgets/card_tiles/card_tiles.dart';
import 'package:tknp/widgets/iso_widget.dart';

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
    final offTheme = Theme.of(context);
    return Scaffold(
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
                              'The Kisumu National \nPolytechnic',
                              style: textTheme.headline6!.copyWith(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Text('Industry Succeeds',style: textTheme.subtitle1,),
                  ],
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Address'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Technology rd, Kisumu, Kenya',
                  style: textTheme.subtitle1,
                ),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Phone'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('+ (254) 5725 01 501', style: textTheme.subtitle1),
              ),
              // onTap: () => launchURL('tel:+254572501501'),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Mail'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child:
                    Text('info@kisumupoly.ac.ke', style: textTheme.subtitle1),
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Social'),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Facebook'),
                    leading: Icon(Icons.whatshot),
                    // onTap: () => launchURL('https://facebook.com/kisumupoly/'),
                  ),
                  ListTile(
                    title: Text('Twitter'),
                    leading: Icon(Icons.whatshot),
                  ),
                  ListTile(
                    title: Text('GooglePlus'),
                    // subtitle: Text(
                    //     "https://twitter.com/kisumu_poly?ref_src=twsrc%5Etfw"),
                    leading: Icon(Icons.whatshot),
                    // onTap: () => launchURL('https://twitter.com/kisumu_poly?ref_src=twsrc%5Etfw'),
                  ),
                ],
              ),
            ),
            SettingsSpacer(),
            SettingsTitle(title: 'Customer Desk'),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'If you need technical assistance with the '
                      'mobile app at any time, day or night, you call technical support team\n'
                      '+ (254) 7922 81 871',style: textTheme.subtitle1,
                    ),
                  )
                ],
              ),
            ),
            SettingsSpacer(),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "We are  happy to get your feedback into our consideration "
                    "please leave your feedback ",style: textTheme.subtitle1,
                    textAlign: TextAlign.center),
              ),
            ),
            SizedBox(height: 10),
            IsoCertified(),
          ]),
    );
  }
}
