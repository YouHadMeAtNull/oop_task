import 'derived_plants.dart';

void main() {
  var plant = DerivedPlants("Mango Tree", 3, "Fruit Tree", 120.0);

  print("=== Initial Plant Info ===");
  plant.displayInfo();

  print("\n=== After Aging ===");
  plant.growOlder();

  print("\n=== After Growth ===");
  plant.grow(25);

  print("\n=== Final Plant Info ===");
  plant.displayInfo();
}
