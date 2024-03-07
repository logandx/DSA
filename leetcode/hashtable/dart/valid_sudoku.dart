class Solution {
  bool isValidSudoku(List<List<String>> board) {
    final columns = <int, Set<String>>{}; // key: 0..8
    final rows = <int, Set<String>>{}; // key: 0..8
    final squares =
        <(int r, int c), Set<String>>{}; // key = (r / 3, c / 3) => 0..2

    for (var r = 0; r < 9; r++) {
      for (var c = 0; c < 9; c++) {
        if (board[r][c] == ".") {
          continue;
        }
        if (rows[r]?.contains(board[r][c]) ?? false) {
          return false;
        }
        if (columns[c]?.contains(board[r][c]) ?? false) {
          return false;
        }
        if (squares[(r ~/ 3, c ~/ 3)]?.contains(board[r][c]) ?? false) {
          return false;
        }

        columns.update(
          c,
          (value) => value..add(board[r][c]),
          ifAbsent: () => {board[r][c]},
        );
        rows.update(
          r,
          (value) => value..add(board[r][c]),
          ifAbsent: () => {board[r][c]},
        );
        squares.update(
          (r ~/ 3, c ~/ 3),
          (value) => value..add(board[r][c]),
          ifAbsent: () => {board[r][c]},
        );
      }
    }
    return true;
  }
}
