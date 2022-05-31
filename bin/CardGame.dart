library Lucky9;

import 'Constants.dart';
import 'package:stack/stack.dart';
import 'Card.dart';
import 'Player.dart';

class CardGame {
  List stackOfCards = [];
  Set<Player> players =  Set<Player>();
  Ranks ranksInstance =  Ranks();
  void addAllCards() {
    print("Initializing game, adding all cards.");
    for (Suits s in Suits.values) {
      for (String key in ranksInstance.rankMaps.keys) {
        switch (key) {
          case "jack":
            continue;
          case "queen":
            continue;
          case "king":
            continue;
          case "Ten":
            continue;
          default:
            stackOfCards.add(Card(s, ranksInstance.rankMaps[key]));
        }
      }
    }
  }

  void fillDeck() {
    for (Suits s in Suits.values) {
      for (String key in ranksInstance.rankMaps.keys) {
        stackOfCards.add(Card(s, ranksInstance.rankMaps[key]));
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
