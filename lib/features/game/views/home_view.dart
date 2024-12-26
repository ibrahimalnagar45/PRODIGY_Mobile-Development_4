 import 'package:flutter/material.dart';
import 'game_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Select Mode')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Center(
                    child: Text(
                      index % 2 == 0 ? 'X' : 'O',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TicTacToeScreen(mode: 'friend'),
                ),
              );
            },
            child: const Text(
              'Play with Friend',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TicTacToeScreen(mode: 'easy'),
                ),
              );
            },
            child: const Text(
              'Play with Easy AI',
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TicTacToeScreen(mode: 'hard'),
                ),
              );
            },
            child: const Text(
              'Play with Hard AI',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
