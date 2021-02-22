import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tknp/util/ui_helpers.dart';
import 'package:tknp/widgets/busy_button.dart';
import 'package:tknp/widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final offTheme = Theme.of(context);
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double maxHeight = constraints.maxHeight;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: maxHeight / 20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  verticalSpaceSmall,
                  Row(
                    children: [
                      Text('Connecting to',
                          style: textTheme.headline6!.copyWith(
                              fontSize: 28, fontWeight: FontWeight.w500)),
                      horizontalSpaceMedium,
                      Image.asset('assets/images/plogo.png', scale: 4),
                    ],
                  ),
                  verticalSpaceMedium,
                  Text(
                    'Sign-in with your Kisumu Poly Student account to access great features',
                    style: textTheme.subtitle1!
                        .copyWith(fontSize: 21, fontWeight: FontWeight.w100),
                  ),
                  Divider(),
                  verticalSpaceLarge,
                  Row(
                    children: [
                      Image.asset('assets/images/plogo.png', scale: 4),
                      horizontalSpaceSmall,
                      Text(
                        'The Kisumu National Polytechnic',
                        style: textTheme.subtitle1!,
                      ),
                    ],
                  ),
                  verticalSpaceLarge,
                  Divider(),
                  SizedBox(
                    child: Text("Sign In", style: textTheme.subtitle1!),
                  ),
                  verticalSpaceLarge,
                  Text('Email address', style: textTheme.subtitle1!),
                  verticalSpaceTiny,
                  Text('Sign in with your TKNP email address',
                      style: textTheme.subtitle1!),
                  verticalSpaceTiny,
                  InputField(
                    placeholder: 'kherld@tknp.com',
                    controller: emailController,
                  ),
                  verticalSpaceSmall,
                  Padding(
                    padding: EdgeInsets.fromLTRB(6, 8, 6, 8),
                    child: Text('Password', style: textTheme.subtitle1!),
                  ),
                  verticalSpaceTiny,
                  InputField(
                    controller: passwordController,
                    placeholder: '********',
                  ),
                  verticalSpaceSmall,
                  CheckboxListTile(
                    // value: model.checked,
                    onChanged: (value) => value,
                    title: Text('Remember me'), value: true,
                  ),
                  verticalSpaceSmall,
                  BusyButton(
                    title: 'Sign In',
                    // busy: model.busy,
                    onPressed: () {},
                  ),
                  verticalSpaceSmall,
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Forgotten Password | ',style: textTheme.subtitle1!,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                // model.clicked = false;
                              });
                            }),
                      TextSpan(
                          text: 'Terms of Service | ',style: textTheme.subtitle1!,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                // model.clicked = false;
                              });
                            }),
                      TextSpan(
                          text: 'Privacy Policy | ',style: textTheme.subtitle1!,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                // model.clicked = false;
                              });
                            }),
                      TextSpan(
                          text: 'Contact Service desk',style: textTheme.subtitle1!,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                // model.clicked = false;
                              });
                            }),
                    ]),
                  ),
                  verticalSpaceSmall,
                  SizedBox(height: 20),
                  Offstage(
                    // offstage: model.clicked,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Forgotten Password',style: textTheme.subtitle1!),
                          Text('Terms of Service',style: textTheme.subtitle1!),
                          Text('Privacy Policy',style: textTheme.subtitle1!),
                          Text('Contact Service desk',style: textTheme.subtitle1!),
                        ]),
                  ),
                  verticalSpaceSmall,
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
