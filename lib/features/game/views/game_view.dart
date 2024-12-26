 import 'package:flutter/material.dart';

import '../../../core/methods/check_winner.dart';
import '../../../core/methods/easy_ai_algorithm.dart';
import '../../../core/methods/min_max_ai.dart';
import '../../../core/methods/reset_game.dart';

class TicTacToeScreen extends StatefulWidget {
  final String mode;

  const TicTacToeScreen({super.key, required this.mode});

  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';
  bool isGameOver = false;
  String winner = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tic Tac Toe')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: 9,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _handleTap(index),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      board[index],
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          if (isGameOver)
            Column(
              children: [
                Text(
                  winner.isEmpty ? 'It\'s a Draw!' : '$winner Wins!',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => setState(() {
                    resetGame(
                        board: board,
                        currentPlayer: currentPlayer,
                        isGameOver: isGameOver,
                        winner: winner);
                  }),
                  child: const Text('Restart'),
                ),
              ],
            )
        ],
      ),
    );
  }

  void _handleTap(int index) {
    if (board[index].isNotEmpty || isGameOver) return;

    setState(() {
      board[index] = currentPlayer;
      if (checkWinner(board: board, currentPlayer: 'O')) {
        isGameOver = true;
        winner = currentPlayer;
      } else if (!board.contains('')) {
        isGameOver = true;
        winner = '';
      } else {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
        if (currentPlayer == 'O' && widget.mode != 'friend') _makeAIMove();
      }
    });
  }

  void _makeAIMove() {
    int move;
    if (widget.mode == 'easy') {
      move = easyAi(board: board);
    } else {
      move = minimax(board, 0, true)['index'];
    }

    setState(() {
      board[move] = 'O';
      if (checkWinner(board: board, currentPlayer: 'O')) {
        isGameOver = true;
        winner = 'O';
      } else if (!board.contains('')) {
        isGameOver = true;
        winner = '';
      } else {
        currentPlayer = 'X';
      }
    });
  }
}
