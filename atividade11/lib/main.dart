import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detalhes()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Center(
            child: Text(
              'Nova York, EUA',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Center(
              child: Text(
                'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo.',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
