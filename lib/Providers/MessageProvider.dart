import 'package:flutter/cupertino.dart';

class MessageProvider extends ChangeNotifier {
  List<String> _list = [];
  List<String> get list => _list;

  void addMessage(String message) {
    _list.add(message);
  }
}
