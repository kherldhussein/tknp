import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tknp/anim/animated.dart';
import 'package:tknp/theme/theme.dart';
import 'package:tknp/util/ui_helpers.dart';

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool password;
  final bool isReadOnly;
  final String? placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction? textInputAction;
  final String? additionalNote;
  final Function(String)? onChanged;
  final TextInputFormatter? formatter;

  InputField({
    @required this.controller,
    @required this.placeholder,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.formatter,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = false,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool? isPassword;
  double fieldHeight = 55;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return WidgetAnimator(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: widget.smallVersion ? 40 : fieldHeight,
            alignment: Alignment.centerLeft,
            padding: fieldPadding,
            decoration:
                widget.isReadOnly ? disabledFieldDecoration : fieldDecoration,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: widget.controller,
                    keyboardType: widget.textInputType,
                    textCapitalization: TextCapitalization.sentences,
                    focusNode: widget.fieldFocusNode,
                    textInputAction: widget.textInputAction,
                    textAlign: TextAlign.center,
                    style: kCaptionTextStyle,
                    onChanged: widget.onChanged,
                    inputFormatters:
                        widget.formatter != null ? [widget.formatter!] : null,
                    onEditingComplete: () {
                      if (widget.enterPressed != null) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        widget.enterPressed!();
                      }
                    },
                    onFieldSubmitted: (value) {
                      if (widget.nextFocusNode != null) {
                        widget.nextFocusNode!.requestFocus();
                      }
                    },
                    obscureText: isPassword!,
                    readOnly: widget.isReadOnly,
                    decoration: InputDecoration.collapsed(
                      hintText: widget.placeholder,
                      hintStyle: textTheme.subtitle1!.copyWith(
                        fontSize: widget.smallVersion ? 17 : 20,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isPassword = !isPassword!;
                  }),
                  child: widget.password
                      ? Container(
                          width: fieldHeight,
                          height: fieldHeight,
                          alignment: Alignment.center,
                          child: Icon(
                            isPassword!
                                ? Icons.remove_red_eye_outlined
                                : Icons.panorama_fish_eye,
                            color: Colors.grey.shade400,
                          ),
                        )
                      : Container(),
                ),
              ],
            ),
          ),
          if (widget.validationMessage != null)
            NoteText(widget.validationMessage),
          if (widget.additionalNote != null) verticalSpace(5),
          if (widget.additionalNote != null) NoteText(widget.additionalNote),
          verticalSpaceSmall
        ],
      ),
    );
  }
}

class NoteText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final Color? color;

  const NoteText(this.text, {this.textAlign, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.grey[600],
      ),
    );
  }
}
