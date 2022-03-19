class Produit {
  final String name;
  final String description;
  final int prix;
  final String image;

  Produit(this.name, this.description, this.prix, this.image);

  static List<Produit> getProduits() {
    List<Produit> items = <Produit>[];
    // création d'un mock pour les données
    items.add(
      Produit(
        "iPhone",
        "Très très bien... nan je prank",
        1000,
        "1.png"
      )
    );
    items.add(
      Produit(
        "pixel6",
        "Peu mieux faire, beaucoup de bug, mais les photos sont fantastiques",
        250,
        "2.png"
      )
    );
    items.add(
      Produit(
        "Laptop",
        "Ordinateur de bureau pour travailler tranquille",
        950,
        "3.png"
      )
    );
    items.add(
      Produit(
        "Tablette",
        "Pour check les mails dans le canap' en mode pepouze",
        650,
        "4.png"
      )
    );
    items.add(
      Produit(
        "USB",
        "Quand ça veut bien fonctionner, des fois c'est cassée",
        1000,
        "5.png"
      )
    );
    items.add(
      Produit(
        "HDD",
        "En SDD pelo, sinon trop lent !",
        90,
        "6.png"
      )
    );
    return items;
  }
}
