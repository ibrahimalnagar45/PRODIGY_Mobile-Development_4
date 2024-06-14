import 'dart:developer';

isThereAWin({required List<int> player}) {
  player.sort();
  log(player.toString());
  if (player.contains(0)  && player.contains(1) && player.contains(2) ||
      player.contains(3) && player.contains(4) && player.contains(5) ||
      player.contains(6) && player.contains(7)&& player.contains(8)) {
    return 1;
  } else if (player.contains(0) && player.contains(3) && player.contains(6) ||
      player.contains(1) && player.contains(4) && player.contains(7) ||
      player.contains(2)&& player.contains(5) && player.contains(8)) {
    return 1;
  } else if (player.contains(0)&& player.contains(4)&& player.contains(8) ||
      player.contains(2)&& player.contains(4) && player.contains(6)) {
    return 1;
  } else {
    return 0;
  }

  // int count = 0;
  // int j = 0;
  // for (var i = 1; i < player.length; i++) {
  //   if (player[i] - player[j] == 1) {
  //     count++;
  //   }

  //   j++;
  // }
  // if (count == 2) {
  //   return 1;
  // } else {
  //   count = 0;
  //   j = 0;
  // }
  // for (var i = 1; i < player.length; i++) {
  //   if (player[i] - player[j] == 3) {
  //     count++;
  //   }
  //   j++;
  // }
  // if (count == 2) {
  //   return 1;
  // } else {
  //   count = 0;
  //   j = 0;
  // }

  // for (var i = 1; i < player.length; i++) {
  //   if (player[i] - player[j] == 4) {
  //     count++;
  //   }
  //   j++;
  // }
  // if (count == 2) {
  //   return 1;
  // } else {
  //   j = 0;
  //   count = 0;
  // }

  // for (var i = 1; i < player.length; i++) {
  //   if (player[i] - player[j] == 2) {
  //     count++;
  //   }
  //   j++;
  // }
}
