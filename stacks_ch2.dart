/*Balance the Parentheses 
Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced. 
*/

bool isBalanced(String input) {
  List stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  String l = "(a+b+c)/(d*e)";
  print('${l} is balanced: ${isBalanced(l)}');
}
