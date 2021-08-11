import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tknp/widgets/iso_widget.dart';

import '../../theme/theme.dart';
import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? _errorMessage;
  bool get _hasError => _errorMessage != null;

  @override
  initState() {
    super.initState();
    _start();
  }

  void _start() async {
    Timer(const Duration(milliseconds: 800), () => _gotoNextScreen());
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/plogo.png'),
        ),
        Positioned(bottom: 0, child: Center(child: IsoCertified())),
        _hasError
            ? Positioned(
          bottom: mediaQuery.padding.bottom + 32,
          width: 300,
          left: (mediaQuery.size.width - 300) / 2,
          child: _buildError(context),
        )
            : Container(),
      ]),
    );
  }

  Widget _buildError(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(8, 16, 8, 12),
          decoration: BoxDecoration(
            color: kDarkPrimaryColor2,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          child: Text(_errorMessage!, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: kDarkPrimaryColor2),
              ),
              child: const Text('Oops! Try again'),
              onPressed: _gotoNextScreen,
            ),
          ),
        ),
      ],
    );
  }

  Future _gotoNextScreen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool spFirstTime = (sp.getBool('FIRSTIME') ?? false);
    try {
      final result = (sp.getBool('FIRSTIME') ?? false);
      if (result) {
        Get.off(() => OnBoardingView());
      } else {
        await sp.setBool('FIRSTIME', true);
        setState(() {
          _errorMessage = 'Error message';
        });
      }
    } on Exception catch (error) {
      print(error);
      setState(() {
        _errorMessage = 'Error message';
      });
    }
  }
}
