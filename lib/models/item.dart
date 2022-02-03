class Item {
  dynamic id;
  String title;
  String details;
  double price;

  Item({
    this.id = 0,
    this.title = '',
    this.details = '',
    this.price = 0.0,
  });

  Item.copy(from)
      : this(
          title: from.title,
          details: from.details,
          price: from.price,
        );

  Item.fromJson(Map<String, dynamic> json)
      : this(
          title: json['title'],
          details: json['details'],
          price: json['price'],
        );

  Map<String, dynamic> toJson() => {
        'title': title,
        'details': details,
        'price': price,
      };
}
