// showAlert() {

// showDialog(
//                   // barrierDismissible: false,
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: const Text("player1 wins"),
//                       actions: [
//                         IconButton(
//                           onPressed: () {
//                             currentPlayer = 0;
//                             player1.clear();
//                             player2.clear();
//                             ends = true;
//                             setState(() {});
//                             Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return const GameView();
//                                 },
//                               ),
//                             );

//                             // Navigator.of(context).pop();
//                           },
//                           icon: const Icon(Icons.play_arrow),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           icon: const Icon(Icons.close),
//                         ),
//                       ],
//                     );
//                   },
//                 )


// }
