import 'package:appteste/app_drawer.dart';
import 'package:appteste/cliente.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final clientes = [
    Cliente("fulano tal", 19),
    Cliente("fulano tal", 18),
    Cliente("fulano tal", 17),
    Cliente("fulano tal", 16),
    Cliente("fulano tal", 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('clientes')),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (_, int index) => Card(
          child: ListTile(
            title: Text(clientes[index].nome),
            leading: Text(clientes[index].idade.toString()),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  clientes[index].aniversario();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
