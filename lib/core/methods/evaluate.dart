
  int evaluate(List<String> boardState) {
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
      if (boardState[combo[0]] == 'O' &&
          boardState[combo[1]] == 'O' &&
          boardState[combo[2]] == 'O') {
        return 10;
      }
      if (boardState[combo[0]] == 'X' &&
          boardState[combo[1]] == 'X' &&
          boardState[combo[2]] == 'X') {
        return -10;
      }
    }
    return 0;
  }