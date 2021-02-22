import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tknp/anim/animated.dart';

class SettingsSpacer extends StatelessWidget {
  const SettingsSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WidgetAnimator(SizedBox(height: 8));
}

class SettingsTitle extends StatelessWidget {
  final String? title;

  const SettingsTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return WidgetAnimator(
      Padding(
          padding: EdgeInsets.fromLTRB(6, 8, 6, 8),
          child: Text(
            title!,
            style: textTheme.subtitle1,
          )),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final bool? value;
  final ValueChanged<bool>? onChanged;

  const SettingsButton({
    Key? key,
    @required this.title,
    @required this.subtitle,
    @required this.value,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
    Card(
        child: ListTile(
          title: Text(title!),
          subtitle: Text(subtitle!),
          trailing: Switch(value: value!, onChanged: onChanged),
        ),
      ),
    );
  }
}

class SettingsLink extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final WidgetBuilder? builder;

  const SettingsLink({
    Key? key,
    @required this.title,
    @required this.subtitle,
    @required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
    SettingsLinkButton(
        title: title!,
        subtitle: subtitle!,
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: builder!)),
      ),
    );
  }
}

class SettingsLinkButton extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  const SettingsLinkButton({
    Key? key,
    @required this.title,
    this.subtitle,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return WidgetAnimator(
     Card(
        child: ListTile(
          title: Text(title!),
          subtitle: Text(
            subtitle!,
            style: textTheme.subtitle1!,
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
      ),
    );
  }
}
