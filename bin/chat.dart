import 'dart:io';

void main() {
  List<String> shoppingList = [];

  print('Welcome to the Shopping List App!');

  while (true) {
    print('\nEnter an option:\n1 - Add item\n2 - Remove item\n3 - View list\n4 - Exit');
    String option = stdin.readLineSync();

    switch (option) {
      case '1':
        print('Enter the item to add:');
        String newItem = stdin.readLineSync();
        shoppingList.add(newItem);
        print('$newItem added to the list!');
        break;
      case '2':
        if (shoppingList.isEmpty) {
          print('The list is already empty.');
        } else {
          print('Current items in the list:');
          for (int i = 0; i < shoppingList.length; i++) {
            print('$i - ${shoppingList[i]}');
          }
          print('Enter the index of the item to remove:');
          int index = int.parse(stdin.readLineSync());
          if (index >= 0 && index < shoppingList.length) {
            String removedItem = shoppingList.removeAt(index);
            print('$removedItem removed from the list.');
          } else {
            print('Invalid index.');
          }
        }
        break;
      case '3':
        if (shoppingList.isEmpty) {
          print('The shopping list is empty.');
        } else {
          print('Shopping List:');
          for (int i = 0; i < shoppingList.length; i++) {
            print('${i + 1}. ${shoppingList[i]}');
          }
        }
        break;
      case '4':
        print('Thank you for using the Shopping List App!');
        return;
      default:
        print('Invalid option. Please choose a valid option.');
        break;
    }
  }
}
