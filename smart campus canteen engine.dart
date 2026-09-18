import 'dart:io';

void main() {
  print("Smart Campus Canteen");

  print("\nStudent Profile");
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter semester: ");
  int semester = int.parse(stdin.readLineSync()!);

  double discount = 0;

  if (semester <= 2) {
    discount = 5;

    discount = 10;
  } else {
    discount = 15;
  }

  print("Welcome $name");
  print("Your discount is $discount%");

  List<String> items = ["Burger", "Pizza", "Tea", "Fries"];
  List<double> prices = [250, 400, 100, 150];

  print("\nCanteen Menu");

  for (int i = 0; i < items.length; i++) {
    print("${i + 1}. ${items[i]} - Rs.${prices[i]}");
  }

  stdout.write("\nChoose item number: ");
  int choice = int.parse(stdin.readLineSync()!);

  stdout.write("Enter quantity: ");
  int quantity = int.parse(stdin.readLineSync()!);

  double total = prices[choice - 1] * quantity;
  double discountAmount = total * discount / 100;
  double bill = total - discountAmount;

  print("\n=== Bill ===");
  print("Student: $name");
  print("Item: ${items[choice - 1]}");
  print("Quantity: $quantity");
  print("Total: Rs.$total");
  print("Discount: Rs.$discountAmount");
  print("Final Bill: Rs.$bill");

  print("\nThank you!");
}
