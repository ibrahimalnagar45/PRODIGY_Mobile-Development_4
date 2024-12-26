
  import 'evaluate.dart';

Map<String, dynamic> minimax(
      List<String> boardState, int depth, bool isMaximizing) {
    if (evaluate(boardState) == 10) return {'score': 10 - depth};
    if (evaluate(boardState) == -10) return {'score': depth - 10};
    if (!boardState.contains('')) return {'score': 0};

    if (isMaximizing) {
      int bestScore = -1000;
      int bestMove = -1;

      for (int i = 0; i < 9; i++) {
        if (boardState[i].isEmpty) {
          boardState[i] = 'O';
          int score = minimax(boardState, depth + 1, false)['score'];
          boardState[i] = '';

          if (score > bestScore) {
            bestScore = score;
            bestMove = i;
          }
        }
      }

      return {'score': bestScore, 'index': bestMove};
    } else {
      int bestScore = 1000;
      int bestMove = -1;

      for (int i = 0; i < 9; i++) {
        if (boardState[i].isEmpty) {
          boardState[i] = 'X';
          int score = minimax(boardState, depth + 1, true)['score'];
          boardState[i] = '';

          if (score < bestScore) {
            bestScore = score;
            bestMove = i;
          }
        }
      }

      return {'score': bestScore, 'index': bestMove};
    }
  }