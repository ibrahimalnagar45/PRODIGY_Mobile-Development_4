import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/methods/wins.dart';
import 'package:tic_tac_toe/features/game/views/game_view.dart';
import 'package:tic_tac_toe/features/game/views/home_view.dart';

class BlocWidget extends StatefulWidget {
  const BlocWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<BlocWidget> createState() => _BlocWidgetState();
}

class _BlocWidgetState extends State<BlocWidget> {
  String? letter;
  static int currentPlayer = 0;
  static List<int> player1 = [11, 11, 11, 11, 11];
  static List<int> player2 = [11, 11, 11, 11, 11];
  static int index1 = 0, index2 = 0;
  bool blocPressedDone = false;
  int isOver = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: blocPressedDone == true
          ? () {}
          : () {
              isOver++;
              blocPressedDone = true;
              if (currentPlayer == 0) {
                player1.removeAt(index1);
                player1.insert(index1, widget.index);
                index1++;

                letter = 'X';
                setState(() {});
                isThereAWin(player: player1) == 1
                    ? showAlert(text: 'player1 wins')
                    : gameOver();
                currentPlayer++;
              } else {
                player2.removeAt(index2);
                player2.insert(index2, widget.index);
                index2++;

                letter = 'O';
                setState(() {});
                isThereAWin(player: player2) == 1
                    ? showAlert(text: 'player2 (O) wins ')
                    : gameOver();
                currentPlayer--;
              }
            },
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
        ),
        child: letter == null
            ? const Text('')
            : Center(
                child: Text(
                  letter.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }

  showAlert({required String text}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(text),
          icon: const Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () {
                resetTheGame();
                goTo(widget: const GameView());
              },
              icon: const Icon(Icons.play_arrow),
            ),
            IconButton(
              onPressed: () {
                resetTheGame();
                goTo(widget: const HomeView());
              },
              icon: const Icon(Icons.close),
            ),
          ],
        );
      },
    );
  }

  resetTheGame() {
    setState(() {
      currentPlayer = 0;
      
      index1 = 0;
      index2 = 0;
      player1.clear;
      player2.clear();
      player1 = [11, 11, 11, 11, 11];
      player2 = [11, 11, 11, 11, 11];
    });
  }

  gameOver() {
    if (isOver == 9 &&
        isThereAWin(player: player1) == -1 &&
        isThereAWin(player: player2) == -1) {
      showAlert(text: 'game over');

      log('gameOver');
    } else {
      null;
    }
  }

  goTo({required Widget widget}) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
