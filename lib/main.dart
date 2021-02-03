import 'package:flutter/material.dart';
import 'package:project_flutter/my_container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:project_flutter/pages/home_page.dart';
import 'package:project_flutter/Like_Instagram_Card/Basic.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme:
            GoogleFonts.aBeeZeeTextTheme(Theme.of(context).textTheme),
      ),
      home: HomePage(),
    );
  }
}
