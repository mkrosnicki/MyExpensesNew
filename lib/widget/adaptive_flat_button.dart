import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {

  final String _text;
  final Function _onPressedFunction;

  AdaptiveFlatButton(this._text, this._onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
      child: Text(
        _text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: _onPressedFunction,
    )
        : FlatButton(
      textColor: Theme.of(context).primaryColor,
      child: Text(
        _text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: _onPressedFunction,
    );
  }
}
