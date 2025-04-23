
import 'dart:io';

import 'Week-3.dart';

void main() {
  print("🍕 Welcome to the Pizza Ordering System 🍕");

  while (true) {
    print("\nMain Menu:");
    print("1. Order a Pizza");
    print("2. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      // 🟢 اختر نوع البيتزا
      print("\nSelect Pizza Type:");
      print("1. Margherita");
      print("2. Pepperoni");
      print("3. Veggie");
      stdout.write("Enter choice: ");
      String? typeChoice = stdin.readLineSync();

      // 🟢 اختر الحجم
      print("\nSelect Pizza Size:");
      print("1. Small");
      print("2. Medium");
      print("3. Large");
      stdout.write("Enter size: ");
      String? sizeInput = stdin.readLineSync();

      PizzaSize size;
      switch (sizeInput) {
        case '2':
          size = PizzaSize.Medium;
          break;
        case '3':
          size = PizzaSize.Large;
          break;
        default:
          size = PizzaSize.Small;
      }

      // 🟢 أضف التوبينجز
      stdout.write("\nEnter toppings separated by commas (e.g. olives,onions): ");
      String? toppingInput = stdin.readLineSync();
      List<String> toppings = toppingInput != null && toppingInput.trim().isNotEmpty
          ? toppingInput.split(',').map((t) => t.trim()).toList()
          : [];

      // 🟢 أنشئ كائن البيتزا
      Pizza pizza;
      switch (typeChoice) {
        case '2':
          pizza = PepperoniPizza(size, toppings);
          break;
        case '3':
          pizza = VeggiePizza(size, toppings);
          break;
        default:
          pizza = MargheritaPizza(size, toppings);
      }

      // 🟢 أنشئ الطلب
      stdout.write("\nEnter Customer ID: ");
      String? customerId = stdin.readLineSync();
      String orderId = DateTime.now().millisecondsSinceEpoch.toString(); // order ID تلقائي

      Order order = Order(orderId, customerId ?? 'Unknown', pizza);
      order.confirmOrder();
    } else if (choice == '2') {
      print("👋 Thank you for using the Pizza Ordering System!");
      break;
    } else {
      print("❌ Invalid choice. Please try again.");
    }
  }
}
