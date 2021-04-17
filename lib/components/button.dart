import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color(0xff494849);
  static const DEFAULT = Color(0xff686668);
  static const OPERATION = Color(0xfffba437);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.callback,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.callback,
  });

  Button.dark({
    required this.text,
    this.big = false,
    this.color = DARK,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: RaisedButton(
          color: this.color,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
          ),
          onPressed: () => callback(text),
        ));
  }
}
