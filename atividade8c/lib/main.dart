import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue[900],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      body: Center(
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              height: 700,
              width: 700,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellowAccent,
              ),
            ),
            Container(
              child: Center(
                child: SizedBox(
                  height: 250,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
