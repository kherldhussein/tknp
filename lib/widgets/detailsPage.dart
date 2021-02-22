import 'package:flutter/material.dart';
import 'package:tknp/anim/animated.dart';

// ContainerTransitionType _transitionType = ContainerTransitionType.fade;

class DetailsPage extends StatefulWidget {
  final List<Widget>? data;
  final String? title;
  final String? barTitle;

  const DetailsPage({
    Key? key,
    @required this.data,
    @required this.title,
    @required this.barTitle,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(widget.barTitle!),
        elevation: 0,
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: [
            SizedBox(height: 15),
            SelectableText(
              widget.title!,
              textAlign: TextAlign.center,
              style: textTheme.headline5!.copyWith(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.data!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpenContainerWrapper extends StatelessWidget {
  const OpenContainerWrapper({
    // this.closedBuilder,
    @required this.data,
    @required this.title,
    @required this.barTitle,
  });

  // final CloseContainerBuilder closedBuilder;
  final List<Widget>? data;
  final String? title;
  final String? barTitle;

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      Text(''),
      // OpenContainer<bool>(
      // transitionType: _transitionType,
      // openBuilder: (context, openContainer) => DetailsPage(
      //     title: title, data: data, barTitle: barTitle),
      // tappable: false,
      // closedBuilder: closedBuilder,
      // ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    this.openContainer,
    @required this.title,
    this.subTitle,
    this.details,
  });

  final String? title;
  final String? details;
  final String? subTitle;
  final VoidCallback? openContainer;

  @override
  Widget build(BuildContext context) {
    return InkWellOverlay(
      openContainer: openContainer!,
      height: 300,
      child: LayoutBuilder(
          builder: (context, constraints) => ConstrainedBox(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Text(
                            title!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 15),
                          ),
                          subtitle: Text('')),
                    ],
                  ),
                ),
              )),
    );
  }
}

class InkWellOverlay extends StatelessWidget {
  const InkWellOverlay({
    this.openContainer,
    this.width,
    this.height,
    this.child,
  });

  final VoidCallback? openContainer;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(onTap: openContainer, child: child),
    );
  }
}
