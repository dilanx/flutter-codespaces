import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyState extends ChangeNotifier {
  String? imageUrl;
  String text = 'what';

  Future updateData(String url) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri);

    try {
      var body = jsonDecode(response.body);
      imageUrl = body['url'];
      text = body['text'];
    } catch (err) {
      text = "ERROR!";
      print(err);
    }

    notifyListeners();
  }
}
