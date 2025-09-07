class Person {
  // Private attributes
  String _name;
  int _age;
  String _gender;

  // Constructor
  Person(this._name, this._age, this._gender);

  // Getter for name
  String get name => _name;

  // Getter and Setter for age (with validation)
  int get age => _age;
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      throw Exception("Age cannot be negative");
    }
  }

  // Getter for gender
  String get gender => _gender;

  // Method 1: Safely change attribute
  void celebrateBirthday() {
    _age++;
    print("Happy Birthday, $_name! Age is now $_age.");
  }

  // Method 2: Use attributes
  void displayInfo() {
    print("Name: $_name | Age: $_age | Gender: $_gender");
  }
}
