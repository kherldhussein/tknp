import 'package:flutter/material.dart';
import 'package:tknp/theme/theme.dart';
import 'package:tknp/widgets/card_tiles/card_tiles.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        shape: kAppBarShape,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        children: <Widget>[
          SettingsTitle(title: 'Customize Your experience'),
          // SettingsTitle(title: 'General'),
          SettingsButton(
            title: 'Dark Mode',
            subtitle: 'Switch to join the dark side',
            value: true,
            // onChanged: (value) => model.updateAppTheme(context),
          ),
          SettingsSpacer(),
          SettingsTitle(title: 'Information'),
          SettingsLinkButton(
            title: 'FAQ',
            subtitle: "Get to know frequently asked questions",
            // onTap: () => Get.to(Information()),
          ),
          SettingsSpacer(),
          Offstage(
              // offstage: currentUser.course == null,
              child: SettingsTitle(title: 'Account')),
          Offstage(
            // offstage: currentUser.course == null,
            child: SettingsLinkButton(
              title: 'Profile',
              subtitle: 'Customise your profile',
              // onTap: () => Get.to(ProfileView()),
            ),
          ),
          Offstage(
              // offstage: currentUser.course == null,
              child: SettingsSpacer()),
          Offstage(
            // offstage: currentUser.course == null,
            child: SettingsLinkButton(
              title: 'Log Out',
              subtitle: '',
              // onTap: model.logOut,
            ),
          ),
        ],
      ),
    );
  }
}
