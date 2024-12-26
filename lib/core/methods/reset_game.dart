  void resetGame({required List board, required String currentPlayer, required bool isGameOver, required String winner}) {
    
      board = List.filled(9, '');
      currentPlayer = 'X';
      isGameOver = false;
      winner = '';
     
  }