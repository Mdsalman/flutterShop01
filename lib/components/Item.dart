class Item {
  String _id;
  String _title;
  String _description;
  String _price;
  String _picture;


  Item(this._id, this._title, this._description, this._price, this._picture);

  Item.map(dynamic obj) {
    this._id = obj['id'];
    this._title = obj['Name'];
    this._description = obj['Description'];
    this._price = obj['Price'];
    this._picture = obj['Picture'];
  }

  String get id => _id;
  String get Name => _title;
  String get Description => _description;
  String get Price => _price;
  String get picture => _picture;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['Name'] = _title;
    map['Description'] = _description;
    map['Price'] =_price;
    map['picture'] =_picture;

    return map;
  }

  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['Name'];
    this._description = map['Description'];
    this._price = map['Price'];
    this._picture = map['picture'];
  }
}
