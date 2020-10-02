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
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  imc() {
    double peso = double.tryParse(pesoController.text);
    double altura = double.tryParse(alturaController.text);
    double result = peso / (altura * altura);

    this.resp = "IMC = ${result.toStringAsPrecision(2)}\n";

    if (result < 16)
      this.resp += "Magreza grave";
    else if (result < 17)
      this.resp += "Magreza moderada";
    else if (result < 18.5)
      this.resp += "Magreza leve";
    else if (result < 25)
      this.resp += "Saudavel";
    else if (result < 30)
      this.resp += "Sobrepeso";
    else if (result < 35)
      this.resp += "Obesidade Grau I";
    else if (result < 40)
      this.resp += "Obesidade Grau II (Severa)";
    else
      this.resp += "Obesidade Grau III (Mórbida)";

    return this.resp;
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
                  controller: pesoController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => pesoController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'informe o seu peso',
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
                    labelText: 'informe a sua altura',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(4.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    print(imc());
                    setState(imc);
                  },
                  child: Text(
                    "Calular IMC",
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
