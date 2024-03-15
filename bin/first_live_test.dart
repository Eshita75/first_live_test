main(){
  List<Fruit> fruits = [ //List with 3 fruits
    Fruit('Apple', 'Red', 2.5),
    Fruit('Banana', 'Yellow', 1.0),
    Fruit('Grapes', 'Purple', 3.0),
  ];

  print('Original Fruit Details before Discount: ');
  displayFruitDetails(fruits);

  double discountPercentage = 10; // 10% discount
  applyPriceDiscount(fruits, discountPercentage);

  print('\nFruit Details After Applying ${discountPercentage.toInt()}% Discount:');
  displayFruitDetails(fruits);

}

class Fruit{
  String name;
  String color;
  double price;

  Fruit(this.name, this.color, this.price);// Constructor of fruit class
}

displayFruitDetails(List<Fruit> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit.name}, Color: ${fruit.color}, Price: \$${fruit.price}');
  }
}

applyPriceDiscount(List<Fruit> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double discountedPrice = fruit.price - (fruit.price * (discountPercentage / 100));
    fruit.price = discountedPrice;
  }
}
