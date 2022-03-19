import 'package:flutter/material.dart';
import 'produit.dart';
import 'ratingbox.dart';

class ProduitBox extends StatelessWidget {
  final Produit item;
  const ProduitBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(item.image),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(item.name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text(item.description),
                        Text("Prix : " + item.prix.toString()),
                        RatingBox(),
                      ],
                    ))),
          ],
        )));
  }
}
