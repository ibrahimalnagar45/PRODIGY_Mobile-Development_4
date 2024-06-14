import 'package:flutter/material.dart';
import 'package:tic_tac_toe/features/game/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: HomeViewBody(),
      ),
    );
  }
}
