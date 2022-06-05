library Lucky9;

import 'card_game.dart';
import 'constants.dart';
import 'player.dart';
import 'card.dart';

class Lucky9 extends CardGame {
  int getValue(Set cards) {
    int value = 0;
    for (Card card in cards) {
      value += (card.get_rank());
    }
    while (value > 9) {
      value -= 10;
    }

    return value;
  }

  void removeInvalidCards() {
    /* stackOfCards.forEach((element) {
      print(element.get_rank());
    }); */
    stackOfCards.removeWhere((element) =>
        element.get_rank() == 10 ||
        element.get_rank() == 11 ||
        element.get_rank() == 12 ||
        element.get_rank() == 13);

    print("ALLOWED CARDS");
    print(stackOfCards.length);
  }

  Set<Player> getWinners() {
    Set<Player> winners = new Set<Player>();
    int highest = 0;
    getPlayers().forEach((p) {
      int temp = getValue(p.getCards());
      if (temp > highest) {
        highest = temp;
      }
    });
    getPlayers().forEach((p) {
      int temp = getValue(p.getCards());
      if (temp == highest) {
        winners.add(p);
      }
    });

    return winners;
  }
}
