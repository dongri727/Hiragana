import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String _inputText = "";

  void appendText(String val) {
    this._inputText = this._inputText + val;
    notifyListeners();
  }

  String getText() {
    return this._inputText;
  }
}
