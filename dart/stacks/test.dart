/// Example of the linter checking the opening and closing brackets (including
/// parentheses, square brackets, and curly braces) using stack.

class Linter {
  String? error;
  List<String> _stack = [];

  void lint(String text) {
    for (int index = 0; index < text.length; index++) {
      var char = text[index];
      if (containsOpeningBrace(char)) {
        _stack.add(char);
      } else if (containsClosingBrace(char)) {
        if (_stack.isEmpty || !closesMostRecentOpeningBrace(char)) {
          error = 'Incorrect closing brace: $char at index $index';
          return;
        }
        _stack.removeLast();
      }
    }

    if (_stack.isNotEmpty) {
      error = '${_stack.last} does not have a closing brace';
    }
  }

  bool containsOpeningBrace(String char) {
    return ['(', '[', '{'].contains(char);
  }

  bool containsClosingBrace(String char) {
    return [')', ']', '}'].contains(char);
  }

  String? openingBraceOf(String char) {
    return {')': '(', ']': '[', '}': '{'}[char];
  }

  String? get mostRecentOpeningBrace {
    return _stack.isNotEmpty ? _stack.last : null;
  }

  bool closesMostRecentOpeningBrace(String char) {
    return openingBraceOf(char) == _stack.last;
  }
}

void main() {
  var linter = Linter();
  linter.lint("(var x = {y:[1, 2, 3]})");
  if (linter.error != null) {
    print(linter.error);
  } else {
    print("No errors found.");
  }
}
