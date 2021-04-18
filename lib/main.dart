import 'package:blog_app/Authentication.dart';
import 'package:flutter/material.dart';
import 'Mapping.dart';
import 'Authentication.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new BlogApp());

}


class BlogApp extends StatelessWidget {
  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Blog App",
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: MappingPage(auth: Auth(),),
    );
  }
}

