import 'package:flutter/material.dart';

class Greetings {
  var period = TimeOfDay.now().period;
  var times = TimeOfDay.now();
  String? greetings;

  greet() {
    if (greetings != null && greetings != '') return greetings;
    if (period.toString().contains('pm')) {
      greetings = '${S().eGreetings}';
    } else if (period.toString().contains('am')) {
      greetings = '${S().mGreetings}';
    }
    if (times.toString().contains('13:')) {
      greetings = '${S().aGreetings}';
    } else if (times.toString().contains("14:")) {
      greetings = '${S().aGreetings}';
    } else if (times.toString().contains("15:")) {
      greetings = '${S().aGreetings}';
    } else if (times.toString().contains('23:')) {
      greetings = '${S().nGreetings}';
    }
    return greetings;
  }
}

class S {
  String get mGreetings => "Good Morning";

  String get eGreetings => "Good Evening";

  String get aGreetings => "Good Afternoon";

  String get nGreetings => "Good Night";
}
