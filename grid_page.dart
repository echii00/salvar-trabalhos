import 'package:appteste/app_drawer.dart';
import 'package:appteste/cliente.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  final clientes = [
    Cliente("fulano tal", 1),
    Cliente("fulano tal", 56),
    Cliente("fulano tal", 90),
    Cliente("fulano tal", 17),
    Cliente("fulano tal", 14),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('clientes')),
      drawer: AppDrawer(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2,
        ),
        itemCount: clientes.length,
        itemBuilder: (_, int index) => Card(
          child: ListTile(
            title: Text(clientes[index].nome),
            leading: Text(clientes[index].idade.toString()),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed:(){
              setState(() {
                clientes[index].aniversario();              });
            }),
          ),
        ),
      ),
    );
  }
}
