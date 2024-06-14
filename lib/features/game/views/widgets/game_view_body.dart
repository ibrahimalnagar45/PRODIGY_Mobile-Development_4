import 'package:flutter/material.dart';
import 'package:tic_tac_toe/features/game/views/home_view.dart';
import 'package:tic_tac_toe/features/game/views/widgets/bloc_widget.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: MediaQuery.of(context).size.height * .3),
      top: true,
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return BlocWidget(
                  index: index,
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeView();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow),
              )
            ],
          )
        ],
      ),
    );
  }
}
