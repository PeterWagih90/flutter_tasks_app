class ShoppingCartModule {
  bool favorite;

  String title;

  String description;

  double price;

  String poster_path;

  ShoppingCartModule(this.title, this.price, this.favorite,
      {this.description = "No Description",
      this.poster_path =
      "http://images.amazon.com/images/P/0596004613.01._PE30_PI_SCMZZZZZZZ_.jpg"});
}
