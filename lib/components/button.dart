import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color(0xff494849);
  static const DEFAULT = Color(0xff686668);
  static const OPERATION = Color(0xfffba437);

  final String text;
  final bool big;
  final Color color;

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
  });
  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: DEFAULT),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w300),
          ),
          onPressed: () {},
        ));
  }
}
