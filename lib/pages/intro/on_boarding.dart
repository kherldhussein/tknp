import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../theme/theme.dart';
import 'intro.dart';

class OnBoardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages = [
      PageViewModel(
        pageColor: ksSe,
        body: Text(
          'We are happy to introduce  dynamic courses which include '
              'new and great features.',
        ),
        title: Text('Our Training Programmes'),
        titleTextStyle: kTitleLightTextStyle.copyWith(fontSize: 20),
        bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
        mainImage: Lottie.asset('assets/lottie/noteIcon.json', repeat: true),
      ),
      PageViewModel(
        pageColor: ksPp,
        body: Text(
          'We have dedicated staff to help you through your training program.',
        ),
        title: Text('Our Community'),
        mainImage: Lottie.asset('assets/lottie/work.json', repeat: true),
        titleTextStyle: kTitleLightTextStyle,
        bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
      ),
      PageViewModel(
        pageColor: ksS,
        body: Text(
          'We are are accepting  admissions so don\'t delay get enrolled as  possible.',
        ),
        title: Text('Admission Process'),
        mainImage: Lottie.asset('assets/lottie/e-learning.json', repeat: true),
        titleTextStyle: kTitleLightTextStyle,
        bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
      ),
    ];
    return IntroViewsFlutter(
      pages,
      showNextButton: true,
      showBackButton: true,
      background: kDarkPrimaryColor,
      pageButtonTextStyles: kButtonTextStyle,
      doneText:
      Text('Get Started', style: kCaptionTextStyle.copyWith(fontSize: 24)),
      onTapDoneButton: () => Get.off(() => IntroPage()),
    );
  }
}