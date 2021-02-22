import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tknp/pages/home_page.dart';
import 'package:tknp/theme/theme.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  // Initializing the necessary components
  // await Utils.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TKNP',
      theme: theme,
      // darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
