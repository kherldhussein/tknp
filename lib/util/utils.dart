import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tknp/theme/themeProvider.dart';

class Utils {
  static Future initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    Get.lazyPut<ThemeProvider>(() => ThemeProvider());
    ThemeProvider.to.getThemeModeFromPreferences();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}
