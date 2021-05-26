import 'package:flutter/material.dart';

class IconContent extends StatefulWidget {
  IconContent(
      {Key key,
      @required this.text,
      @required this.fontIcon,
      this.contentColor})
      : super(key: key);
  final String text;
  final IconData fontIcon;
  final Color contentColor;

  @override
  _IconContentState createState() => _IconContentState();
}

class _IconContentState extends State<IconContent> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        widget.fontIcon,
        size: 80.0,
        color: widget.contentColor,
      ),
      SizedBox(height: 15.0),
      Text(
        widget.text,
        style: TextStyle(
            fontSize: 25.0,
            color: widget.contentColor,
            fontWeight: FontWeight.bold),
      )
    ]);
  }
}
