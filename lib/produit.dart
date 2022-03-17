class Produit {
  final String name;
  final String description;
  final int prix;
  final String image;

  Produit(this.name, this.description, this.prix, this.image);

  static List<Produit> getProduits() {
    List<Produit> items = <Produit>[];

    items.add(
      Produit(
        "iPhone",
        "Très très bien",
        1000,
        "1.png"
      )
    );
    items.add(
      Produit(
        "pixel1",
        "Mieux très bien",
        250,
        "2.png"
      )
    );
    items.add(
      Produit(
        "Laptop",
        "Ordinateur de bureau",
        950,
        "3.png"
      )
    );
    items.add(
      Produit(
        "Tablette",
        "Pour check les mails dans le canap'",
        650,
        "4.png"
      )
    );
    items.add(
      Produit(
        "USB",
        "Quand ça veut bien fonctionner",
        1000,
        "5.png"
      )
    );
    items.add(
      Produit(
        "HDD",
        "En SDD pelo !",
        90,
        "6.png"
      )
    );
    return items;
  }
}
