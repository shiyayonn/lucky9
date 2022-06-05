library Lucky9;

import 'constants.dart';
import 'package:stack/stack.dart';
import 'card.dart';
import 'player.dart';

class CardGame {
  List stackOfCards = [];
  Set<Player> players = Set<Player>();
  void addAllCards() {
    print("Initializing game, adding all cards.");

    for (Suits s in Suits.values) {
      for (Ranks r in Ranks.values) {
        stackOfCards.add(Card(s.getSuit, r.getRank));
      }
    }
  }

  void fillDeck() {
    for (Suits s in Suits.values) {
      for (Ranks r in Ranks.values) {
        stackOfCards.add(Card(s.getSuit, r.getRank));
      }
    }
  }

  void reset() {
    players.clear();
    // find a way to empty stack
    stackOfCards = [];
    addAllCards();
    print("Game was reset");
  }

  void getDeck() {
    for (int i = 0; i < stackOfCards.length; i++) {
      print(stackOfCards[i].getName());
    }
  }

  void shuffleDeck() {
    //convert stack to list then shuffle then convert back to stack
    stackOfCards.shuffle();
    print("Current card deck was shuffled");
  }

  Card popDeck() {
    var lastCard = stackOfCards.last;
    stackOfCards.removeLast();
    return lastCard;
  }

  void pushDeck(Card card) {
    stackOfCards.add(card);
  }

  void addPlayer(Player player) {
    players.add(player);
  }

  Set<Player> getPlayers() {
    return players;
  }
}
