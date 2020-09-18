import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purple,
                    Colors.purple.withAlpha(0),
                    Colors.blue,
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network('https://picsum.photos/250?image=9'),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
