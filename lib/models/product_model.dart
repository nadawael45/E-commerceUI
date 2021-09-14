class Product {
  late final int id;
  late final String img;
  late final String itemName;
  late final String itemDesc;
  late final String itemPrice;
  late final String itemDepercPrice;
  late final String longDesc;


  Product(this.id, this.img, this.itemName, this.itemDesc, this.itemPrice,
      this.itemDepercPrice,this.longDesc,);
}

List<Product> items = [
  Product(
      1, 'assets/images/bracelet.png', 'Bracelets', 'Black Rope Bracelet',
      'USD29', 'USD38',
      'Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.'),
  Product(2, 'assets/images/ww.png', 'Watch',
      'Black Stone Bracelet', 'USD100', 'USD150',''),
  Product(3, 'assets/images/images1.jpg', 'Watch', 'Black Rope watch', 'USD66',
      'USD88',      'Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.'),

];
