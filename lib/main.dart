import 'package:flutter/material.dart';
import 'package:login_design/List_view_class.dart';
import 'package:login_design/Login_page.dart';
import 'package:login_design/Messenger_Design.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Model(),
    );
  }

}