import 'package:flutter/material.dart';
import 'ratingbox.dart';
import 'produit.dart';

class ProduitPage extends StatelessWidget {
  final Produit item;
  const ProduitPage({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      item.name, 
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    Text(
                      item.description,
                    ),
                    Text(
                      'Prix : ' + item.prix.toString()),
                    const RatingBox(),
                  ],
                ),
              ),)
          ],
        ),
      )),
    );
  }
}
