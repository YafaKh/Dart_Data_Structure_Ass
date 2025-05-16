//Create a function that prints the contents of a list in reverse order.
void reverseList(List l) {
  List stack = [];

  for (var i in l) {
    stack.add(i);
  }
  
  print('Reversed List:');

  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  List<int> numbers = [20,30,40,50];
  reverseList(numbers);
}

