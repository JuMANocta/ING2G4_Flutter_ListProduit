import 'package:flutter/material.dart';
import 'produit.dart';
import 'produitbox.dart';
import 'produitpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Rate my Device'),
      debugShowCheckedModeBanner: true,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final items = Produit.getProduits();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              child: ProduitBox(item: items[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProduitPage(item: items[index],)),
                );
              },
            );
          })),
    );
  }
}
