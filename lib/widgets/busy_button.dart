import 'package:flutter/material.dart';
import 'package:tknp/theme/theme.dart';

/// A button that shows a busy indicator in place of title
class BusyButton extends StatefulWidget {
  final bool busy;
  final String? title;
  final VoidCallback onPressed;
  final bool enabled;

  const BusyButton({
    @required this.title,
    this.busy = false,
    required this.onPressed,
    this.enabled = true,
  });

  @override
  _BusyButtonState createState() => _BusyButtonState();
}

class _BusyButtonState extends State<BusyButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // ScreenUtil.init(context, height: height, width: width);
    return GestureDetector(
      onTap: widget.onPressed,
      child: InkWell(
        child: AnimatedContainer(
          height: widget.busy ? 60 : null,
          width: widget.busy ? 60 : null,
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: widget.busy ? 20 : 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: widget.enabled ? kDarkPrimaryColor : Color(0xFF42A5F5),
            // borderRadius: BorderRadius.circular(25),
          ),
          child: !widget.busy
              ? Text(widget.title!, style: textTheme.subtitle1!)
              : CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
