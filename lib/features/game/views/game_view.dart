import 'package:flutter/material.dart';
 import 'package:tic_tac_toe/features/game/views/widgets/game_view_body.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GameViewBody(),
    );
  }
}
