import 'dart:math';

int easyAi({required List board}) {
  List<int> availableMoves = [];
  for (int i = 0; i < 9; i++) {
    if (board[i].isEmpty) availableMoves.add(i);
  }
  return availableMoves[Random().nextInt(availableMoves.length)];
}
