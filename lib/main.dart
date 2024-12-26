
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:tic_tac_toe/core/methods/reset_game.dart';

import 'core/methods/check_winner.dart';
import 'core/methods/evaluate.dart';
import 'core/methods/easy_ai_algorithm.dart';
import 'core/methods/min_max_ai.dart';
import 'features/game/views/home_view.dart';

void main() => runApp(const TicTacToeApp());

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeView(),
    );
  }
}

 
