import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StateLess",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String nome = "";

  TextEditingController nomeController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("Estudando Statefull"),
                centerTitle: true,
              ),
              body: Center(
                  child: Container(
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextField(
                            controller: nomeController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Insira o seu nome",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(
                              top: 20
                          )),
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () =>
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: const Text("Olá,"),
                                        content: Text(nomeController.text),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      ),
                                ),
                            child: const Text('Mostrar'),
                          ),
                        ],
                      )
                  )
              )
          )
      );
    }

  }