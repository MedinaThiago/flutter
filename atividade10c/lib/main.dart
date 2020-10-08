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
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  volume() {
    double comprimento = double.tryParse(comprimentoController.text);
    double largura = double.tryParse(larguraController.text);
    double altura = double.tryParse(alturaController.text);
    double resp = comprimento * largura * altura;

    this.resp = "Volulme = ${resp.toStringAsPrecision(5)}\n";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: comprimentoController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => comprimentoController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'informe o comprimento',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: larguraController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => larguraController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'informe a largura',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: alturaController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => alturaController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'informe a altura',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    print(volume());
                    setState(volume);
                  },
                  child: Text(
                    "Calular Volume",
                  ),
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
      ),
    );
  }
}
