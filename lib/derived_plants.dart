import 'plants.dart';

class DerivedPlants extends Plants {
  double _height; // in cm

  DerivedPlants(String name, int years, String type, this._height)
      : super(name, years, type);

  double get height => _height;
  set height(double value) {
    if (value >= 0) {
      _height = value;
    } else {
      throw Exception("Height cannot be negative");
    }
  }

  void grow(double cm) {
    if (cm > 0) {
      _height += cm;
      print("$name grew by $cm cm. Current height: $_height cm.");
    } else {
      print("Growth value must be positive.");
    }
  }

  @override
  void growOlder() {
    super.growOlder();
    print("$name is thriving as it ages! 🌱");
  }

  @override
  void displayInfo() {
    print("Name: $name | Years: $years | Type: $type | Height: $_height cm");
  }
}
