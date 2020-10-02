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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";

  somar() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 + num02;
    this.resp = '$soma';
    return this.resp;
  }

  sub() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 - num02;
    this.resp = '$soma';
    return this.resp;
  }

  multi() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 * num02;
    this.resp = '$soma';
    return this.resp;
  }

  div() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 ~/ num02;
    this.resp = '$soma';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: num01Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num01Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o primeiro número',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: num02Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num01Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o segundo número',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(4.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      print(somar());
                      setState(somar);
                    },
                    child: Text(
                      "Somar",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(4.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      print(sub());
                      setState(sub);
                    },
                    child: Text(
                      "Subitrair",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(4.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      print(multi());
                      setState(multi);
                    },
                    child: Text(
                      "Mutiplicar",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(4.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      print(div());
                      setState(div);
                    },
                    child: Text(
                      "Dividir",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                this.resp,
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
