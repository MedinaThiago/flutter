import 'package:aug/widgets/Logo_widget.dart';
import 'package:aug/widgets/Success.widget.dart';
import 'package:aug/widgets/input_widget.dart';
import 'package:aug/widgets/loading_button.Widget.dart';
import 'package:aug/widgets/submite-form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
