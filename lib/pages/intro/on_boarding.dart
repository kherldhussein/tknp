// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:intro_views_flutter/Models/page_view_model.dart';
// import 'package:intro_views_flutter/intro_views_flutter.dart';
// import 'package:lottie/lottie.dart';
// import 'package:stacked_services/stacked_services.dart';
// import 'package:tknp/models/locator.dart';
// import 'package:tknp/services/auth_service.dart';
// import 'package:tknp/utils/router.gr.dart';
//
// import '../../theme/theme.dart';
//
// class OnBoardingView extends StatelessWidget {
//   final _navigationService = locator<NavigationService>();
//   final _authentication = locator<AuthenticationService>();
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, height: height, width: width);
//
//     final pages = [
//       PageViewModel(
//         pageColor: ksSe,
//         body: Text(
//           'We are happy to introduce  dynamic courses which include '
//               'new and great features.',
//         ),
//         title: Text('Our Training Programmes'),
//         titleTextStyle: kTitleLightTextStyle.copyWith(fontSize: 20),
//         bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
//         mainImage: Lottie.asset('assets/lottie/noteIcon.json', repeat: true),
//       ),
//       PageViewModel(
//         pageColor: ksPp,
//         body: Text(
//           'We have dedicated staff to help you through your training program.',
//         ),
//         title: Text('Our Community'),
//         mainImage: Lottie.asset('assets/lottie/work.json', repeat: true),
//         titleTextStyle: kTitleLightTextStyle,
//         bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
//       ),
//       PageViewModel(
//         pageColor: ksS,
//         body: Text(
//           'We are are accepting  admissions so don\'t delay get enrolled as  possible.',
//         ),
//         title: Text('Admission Process'),
//         mainImage: Lottie.asset('assets/lottie/e-learning.json', repeat: true),
//         titleTextStyle: kTitleLightTextStyle,
//         bodyTextStyle: kCaptionTextStyle.copyWith(fontSize: 18),
//       ),
//     ];
//     return IntroViewsFlutter(
//       pages,
//       showNextButton: true,
//       showBackButton: true,
//       background: kDarkPrimaryColor,
//       pageButtonTextStyles: kButtonTextStyle,
//       doneText:
//       Text('Get Started', style: kCaptionTextStyle.copyWith(fontSize: 24)),
//       onTapDoneButton: () async {
//         bool started = await _authentication.getStarted();
//         if (started) {
//           _navigationService.replaceWith(Routes.homeView);
//         } else {
//           Get.snackbar('Internet', "Check your internet connection");
//         }
//       },
//     );
//   }
// }