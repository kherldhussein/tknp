import 'package:flutter/material.dart';
import 'package:tknp/widgets/iso_widget.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset("assets/images/plogo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: CircularProgressIndicator.adaptive(),
            ),
          ]),
        ),
        Positioned(bottom: 5, child: IsoCertified())
      ]),
    );
  }
}
