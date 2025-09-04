import 'package:appteste/grid_page.dart';
import 'package:appteste/home-page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),

      routes: {
        '/':(context) => HomePage(),
        '/grid': (context) => GridPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


int numero = 0;
Color cores = Colors.black;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TITULO', style: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Text('menu'),
            ElevatedButton(onPressed:() {}, child: Text('botao')),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Desenvolvimento de Sistemas', style: TextStyle(fontSize: 33.5)),
              Text('Seja Bem-Vindo ao Nosso Site'),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    cores = Colors.brown;
                  });
                },
                icon: Icon(Icons.key),
                label: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('botao'),
                ),
              ),
               ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    cores = Colors.deepOrange;
                  });
                },
                icon: Icon(Icons.key),
                label: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('botao'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 20,
                width: 40,
                color: cores,
                child: Center(child: Text('digite')),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
