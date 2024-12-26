  bool checkWinner({required List board, required String currentPlayer}) {
    List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combo in winningCombinations) {
      if (board[combo[0]] == currentPlayer &&
          board[combo[1]] == currentPlayer &&
          board[combo[2]] == currentPlayer) {
        return true;
      }
    }
    return false;
  }