// ignore: file_names
enum PizzaSize { Small, Medium, Large }

abstract class Pizza {
  String? name;
  double? price;
  PizzaSize? size;
  List toppings;
  Pizza(this.name, this.size, this.toppings);
  double calculatePrice();
  @override
  String toString() {
    return 'Pizza: $name\nSize: $size\nToppings: ${toppings.join(", ")}\nPrice: \$${calculatePrice().toStringAsFixed(2)}';
  }
}
class MargheritaPizza extends Pizza {
  MargheritaPizza(PizzaSize size, List<String> toppings)
      : super("Margherita", size, toppings);

  @override
  double calculatePrice() {
    double basePrice = 30;
    switch (size) {
      case PizzaSize.Medium:
        basePrice += 10;
        break;
      case PizzaSize.Large:
        basePrice += 20;
        break;
      default:
        break;
    }
    return basePrice;
  }
}

class PepperoniPizza extends Pizza {
  PepperoniPizza(PizzaSize size, List<String> toppings)
      : super("Pepperoni", size, toppings);

  @override
  double calculatePrice() {
    double basePrice = 35;
    basePrice += 15; // Extra for Pepperoni
    if (size == PizzaSize.Medium) basePrice += 10;
    if (size == PizzaSize.Large) basePrice += 20;
    return basePrice;
  }
}

class VeggiePizza extends Pizza {
  VeggiePizza(PizzaSize size, List<String> toppings)
      : super("Veggie", size, toppings);

  @override
  double calculatePrice() {
    double basePrice = 25;
    basePrice += toppings.length * 5; // 5 لكل topping
    if (size == PizzaSize.Medium) basePrice += 10;
    if (size == PizzaSize.Large) basePrice += 20;
    return basePrice;
  }
}
class Order {
  final String orderId;
  final String customerId;
  final Pizza pizza;
  late double _totalPrice;

  Order(this.orderId, this.customerId, this.pizza) {
    _totalPrice = pizza.calculatePrice();
  }

  void confirmOrder() {
    _payOrder(); // private method
    print("Order Confirmed ✅");
    print(this);
  }

  void _payOrder() {
    print("Processing payment of \$${_totalPrice.toStringAsFixed(2)}...");
  }

  @override
  String toString() {
    return "\n🔸 Order ID: $orderId\n👤 Customer ID: $customerId\n$pizza\n💰 Total: \$${_totalPrice.toStringAsFixed(2)}";
  }
}