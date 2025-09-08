class Plants {
  String _name;
  int _years;
  String _type;

  Plants(this._name, this._years, this._type);

  String get name => _name;
  int get years => _years;
  String get type => _type;

  set years(int value) {
    if (value >= 0) {
      _years = value;
    } else {
      throw Exception("Years cannot be negative");
    }
  }

  void growOlder() {
    _years++;
    print("$_name has matured. Age is now $_years years.");
  }

  void displayInfo() {
    print("Name: $_name | Years: $_years | Type: $_type");
  }
}
