library Lucky9;

import 'package:stack/stack.dart';

import 'card.dart';

class Player {
  String _name = "";
  Set _cards = new Set();

  Player(this._name);

  String getName() {
    return _name;
  }

  void setName(newName) {
    this._name = newName;
  }


  
}

extension playerActions on Player{

  void drawCard(List _deck) {
    _cards.add(_deck.last);
    _deck.removeLast();
  }

  List<String> currentCards() {
    String cards = "";
    for (Card c in _cards) {
      cards += "$c.get_rank() $c.getSymbol() ";
    }
    return cards.split(" ");
  }

  void releaseCard(int index) {
    _cards.remove(index - 1);
  }

  void displayCardInterfaces() {
    for (Card c in _cards) {
      c.displayCardInterface();
    }
  }

  void displayCardInfo(int index) {
  }

  Set getCards() {
    return _cards;
  }
}
