
class Item {
  String _name;
  String _description;
  int _price;
  String _picture;
  int _count = 0;
  


  Item(this._name, this._description, this._price, this._picture, this._count);

  // Item.map(dynamic obj) {
  //   this._id = obj['id'];
  //   this._title = obj['title'];
  //   this._description = obj['description'];
  // }

  // String get name => _name;
  // String get description => _description;
  // String get picture => _picture;
  // int get price => _price;

  // Note.fromSnapshot(DataSnapshot snapshot) {
  //   _id = snapshot.key;
  //   _title = snapshot.value['title'];
  //   _description = snapshot.value['description'];
  // }
}