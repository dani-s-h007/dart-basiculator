import 'dart:io';

void main() {
  print("Welcome to BasiCulator");
  print("1. +\n2. -\n3. *\n4. /\n5. >\n6. <\n7. ==");
  stdout.write("Choose (1-7): ");
  String? c = stdin.readLineSync();
  stdout.write("First number: ");
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write("Second number: ");
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (c) {
    case '1':
      print("Result: $a + $b = ${a + b}");
      break;
    case '2':
      print("Result: $a - $b = ${a - b}");
      break;
    case '3':
      print("Result: $a * $b = ${a * b}");
      break;
    case '4':
      print(b == 0 ? "Error: Cannot divide by 0" : "Result: $a / $b = ${a / b}");
      break;
    case '5':
      print("Result: $a > $b is ${a > b}");
      break;
    case '6':
      print("Result: $a < $b is ${a < b}");
      break;
    case '7':
      print("Result: $a == $b is ${a == b}");
      break;
    default:
      print("Invalid choice");
  }
}
